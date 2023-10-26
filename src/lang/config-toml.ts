import * as vscode from 'vscode';
import { CancellationToken, Hover, Position, ProviderResult, TextDocument } from 'vscode';
import * as toml from 'toml';
import exp = require('constants');

const DEFINITION: { [key: string]: { [key: string]: any } } = {
    "server": {
      "name": "server name",
      "description": "server description (max 127 characters)",
      "max_players": 64,
      "password": "leave it blank for no password",
      "ip": "server IP. we recommend leaving it 0.0.0.0 for default",
      "port": 7777,
      "tick_rate": "server tick rate in milliseconds (dangerous! server will tick at each [tick_rate] ms, affecting both server and client performance. 33 ms means 30 ticks per second and is the default and recommended value)",
      "log_level": "log Level. (1) normal - (2) debug - (3) verbose"
    },
    "world": {
      "game_mode": "game-mode package to load (set the main game-mode package to load - you can load only one 'game-mode' package type at once)",
      "packages": "packages list (set the packages you want to load)",
      "assets": "asset packs list (this will additionally load the asset packs you define here)",
      "map": "default startup map",
      "banned_ids": "banned HELIX account IDs"
    }
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
    console.log("cannot parse toml");
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