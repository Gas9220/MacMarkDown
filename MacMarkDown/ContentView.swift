//
//  ContentView.swift
//  MacMarkDown
//
//  Created by Gaspare Monte on 25/01/24.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: MacMarkDownDocument

    var body: some View {
        HSplitView {
            TextEditor(text: $document.text)
            WebView(html: document.html)
        }
    }
}

#Preview {
    ContentView(document: .constant(MacMarkDownDocument()))
}
