import * as vscode from 'vscode';
import { CancellationToken, Hover, Position, ProviderResult, TextDocument } from 'vscode';

import { getCompletetionFromDefinition } from './lang/toml';
import path = require('path');

import tomlDefs from './completions/toml';
import assets from './completions/default_assets';

function provideHover(doc: TextDocument, pos: Position, tok: CancellationToken): ProviderResult<Hover> {
    const line = doc.lineAt(pos);
    const keyValuePairRegex = /(\w+)\s*=\s*(.*)/g;
    const match = keyValuePairRegex.exec(line.text);
	console.log(tok);

    if (match) {
        const key = match[1];
        const value = match[2];

        const hoverText = `Key: ${key}\nValue: ${value}`;

        return new vscode.Hover(hoverText);
    }

	
	return null;
}

export function activate(context: vscode.ExtensionContext) {
	let disposable = vscode.commands.registerCommand('helix-script.addLuaLibrary', () => {
		// Get the current workspace folder
        let workspaceFolder = vscode.workspace.workspaceFolders?.[0];
        if (!workspaceFolder) {
            vscode.window.showWarningMessage('No workspace is currently opened.');
            return;
        }

        const extensionPath = context.extensionPath;

        // Construct the path to the addons directory
        const addonsPath = path.join(extensionPath, 'addons');

        // Get the current configuration
        const config = vscode.workspace.getConfiguration('Lua.workspace');

        // Get the current value of userThirdParty
        const userThirdParty: string[] = config.get('library') || [];

        // Add the addonsPath if it's not already there
        if (!userThirdParty.includes(addonsPath)) {
            userThirdParty.push(addonsPath);
            config.update('library', userThirdParty, vscode.ConfigurationTarget.Workspace);
            vscode.window.showInformationMessage('Path added successfully!');
        } else {
            // vscode.window.showInformationMessage('Path is already added.');
        }
	});

	context.subscriptions.push(disposable);

	// vscode.languages.registerHoverProvider("toml", {
	// 	provideHover
	// });

    for (let def of tomlDefs) {
        vscode.languages.registerCompletionItemProvider({
            language: "toml",
            pattern: def.pattern,
        }, getCompletetionFromDefinition(def.definition));
    }

    vscode.languages.registerCompletionItemProvider(['lua', 'toml'],
    {
        provideCompletionItems(document, position, token, context) {
            const linePrefix = document
                .lineAt(position)
                .text.substring(0, position.character);
            if (!linePrefix.endsWith('helix::')) {
                return [];
            }

            const items = Object.keys(assets).map((item: string) => {
                const completionItem = new vscode.CompletionItem(item);
                completionItem.insertText = item;
                completionItem.detail = (assets as any)[item];
                return completionItem;
            });

            return items;
        },
    }, ':');

	vscode.workspace.findFiles('**/Config.toml', '**/node_modules/**', 1).then(files => {
        if (files.length > 0) {
            vscode.commands.executeCommand('helix-script.addLuaLibrary');
        }
    });
}

// This method is called when your extension is deactivated
export function deactivate() {}
