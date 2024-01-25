//
//  ContentView.swift
//  MacMarkDown
//
//  Created by Gaspare Monte on 25/01/24.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("editorFontSize") var editorFontSize: Int = 14
    @Binding var document: MacMarkDownDocument

    var body: some View {
        HSplitView {
            TextEditor(text: $document.text)
                .font(.system(size: CGFloat(editorFontSize)))
                .frame(minWidth: 200)
            
            WebView(html: document.html)
                .frame(minWidth: 200)
        }
        .frame(minWidth: 400, minHeight: 300)
    }
}

#Preview {
    ContentView(document: .constant(MacMarkDownDocument()))
}
