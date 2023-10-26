import * as vscode from 'vscode';
import { CancellationToken, Hover, Position, ProviderResult, TextDocument } from 'vscode';
import * as toml from 'toml';
import exp = require('constants');

const DEFINITION: { [key: string]: { [key: string]: any } } = {
    "meta": {
      "title": "friendly name",
      "author": "contributors",
      "version": "version",
    },
    "game_mode": {
      "force_no_map_package": "whether to force the custom map package to do not load",
      "auto_cleanup": "auto destroy all entities spawned by this package when it unloads",
      "load_level_entities": "whether to load all level entities on the client - only enable it if your package needs to use level static meshes entities",
      "compatibility_version": "the game version (major.minor) at the time this package was created, for granting compatibility between breaking changes",
      "packages_requirements": "packages requirements",
      "assets_requirements": "asset packs requirements",
      "compatible_maps": "compatible maps - maps to be highlighted when starting a new game through the main menu",
    },
    // "custom_settings": {
    //   // Here you can add custom settings as needed
    //   // For example:
    //   // "my_toggle_example": {
    //   //   "label": "awesome toggle",
    //   //   "type": "boolean",
    //   //   "description": "press this!",
    //   //   "default": true
    //   // }
    // },
  };

function findSection(document: TextDocument, position: Position): string {
    let lineIndex = position.line;
    let currentLine = document.lineAt(lineIndex).text.trim();
    let sectionName = "";
    while (lineIndex >= 0 && sectionName.length === 0) {
        if (currentLine.startsWith('[') && currentLine.endsWith(']')) {
            // console.log("found section: ", currentLine);
            // Found a section header
            sectionName = currentLine.substring(1, currentLine.length - 1);
            break;
        }

        lineIndex--;
        currentLine = document.lineAt(lineIndex).text.trim();
    }
    return sectionName;
}

function parseToml(document: TextDocument, position: Position): any | undefined | null {
    const text = document.getText();
    try {
        const tomlObject = toml.parse(text);
        return tomlObject;
    } catch (e) {}

    const lineBreak = document.eol === vscode.EndOfLine.CRLF ? '\r\n' : '\n';

    const lines = text.split(lineBreak);
    lines.splice(position.line, 1);
    const textToParse = lines.join(lineBreak);
    try {
        const tomlObject = toml.parse(textToParse);
        return tomlObject;
    } catch (e) {}
    return null;
}

function provideCompletionItems(document: TextDocument, position: Position) {
    // Parse the TOML document
    const tomlObject = parseToml(document, position);

    const section = findSection(document, position);
    if (section.length === 0) return [];

    if (section in DEFINITION) {
        let sugText = Object.keys(DEFINITION[section]);
        if (tomlObject && tomlObject[section]) {
            sugText = sugText.filter((v) => !(Object.keys(tomlObject[section]).includes(v)));
        }
        let sugg = sugText.map((v) => {
            const item = new vscode.CompletionItem(v);
            item.kind = vscode.CompletionItemKind.Property;
            item.command = DEFINITION[section][v];
            item.detail = DEFINITION[section][v];
            return item;
        });
        return sugg;
    }

    return [];
}

export {
    provideCompletionItems
};