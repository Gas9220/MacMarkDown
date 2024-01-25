//
//  MenuCommands.swift
//  MacMarkDown
//
//  Created by Gaspare Monte on 25/01/24.
//

import SwiftUI

struct MenuCommands: Commands {
    var body: some Commands {
        CommandGroup(before: .help) {
            Button("Markdown Cheatsheet") {
                showCheatSheet()
            }
            .keyboardShortcut("/", modifiers: .command)

            Divider()
        }
    }

    func showCheatSheet() {
        let cheatSheetAddress = "https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet"

        guard let url = URL(string: cheatSheetAddress) else {
            fatalError("Invalid cheatsheet URL")
        }

        NSWorkspace.shared.open(url)
    }
}
