import * as vscode from 'vscode';
import { Position, TextDocument } from 'vscode';
import * as toml from 'toml';

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

export function getCompletetionFromDefinition(def: { [key: string]: { [key: string]: any } }) {
    function provideCompletionItems(document: TextDocument, position: Position) {
        // Parse the TOML document
        const tomlObject = parseToml(document, position);
    
        const section = findSection(document, position);
        if (section.length === 0) return [];
    
        if (section in def) {
            let sugText = Object.keys(def[section]);
            if (tomlObject && tomlObject[section]) {
                sugText = sugText.filter((v) => !(Object.keys(tomlObject[section]).includes(v)));
            }
            let sugg = sugText.map((v) => {
                const item = new vscode.CompletionItem(v);
                item.kind = vscode.CompletionItemKind.Property;
                item.command = def[section][v];
                item.detail = def[section][v];
                return item;
            });
            return sugg;
        }
    
        return [];
    }

    return {provideCompletionItems};
}