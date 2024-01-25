//
//  MacMarkDownApp.swift
//  MacMarkDown
//
//  Created by Gaspare Monte on 25/01/24.
//

import SwiftUI

@main
struct MacMarkDownApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: MacMarkDownDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
