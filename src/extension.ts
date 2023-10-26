// The module 'vscode' contains the VS Code extensibility API
// Import the module and reference it with the alias vscode in your code below
import * as vscode from 'vscode';
import { CancellationToken, Hover, Position, ProviderResult, TextDocument } from 'vscode';

import * as configToml from './lang/config-toml';
import * as packageToml from './lang/package-toml';
import path = require('path');

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

// This method is called when your extension is activated
// Your extension is activated the very first time the command is executed
export function activate(context: vscode.ExtensionContext) {

	// Use the console to output diagnostic information (console.log) and errors (console.error)
	// This line of code will only be executed once when your extension is activated
	console.log('Congratulations, your extension "helix-script" is now active!');

	// The command has been defined in the package.json file
	// Now provide the implementation of the command with registerCommand
	// The commandId parameter must match the command field in package.json
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
            vscode.window.showInformationMessage('Path is already added.');
        }
		// vscode.window.showInformationMessage('Hello World from HELIX Script!');
	});

	context.subscriptions.push(disposable);

	// vscode.languages.registerHoverProvider("toml", {
	// 	provideHover
	// });

	vscode.languages.registerCompletionItemProvider({
		language: "toml",
		pattern: "**/Config.toml",
	}, configToml);

	vscode.languages.registerCompletionItemProvider({
		language: "toml",
		pattern: "**/Package.toml",
	}, packageToml);
}

// This method is called when your extension is deactivated
export function deactivate() {}
