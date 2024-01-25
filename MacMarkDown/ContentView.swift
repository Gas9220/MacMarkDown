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

    @State private var previewState = PreviewState.web

    var body: some View {
        HSplitView {
            TextEditor(text: $document.text)
                .font(.system(size: CGFloat(editorFontSize)))
                .frame(minWidth: 200)

            if previewState == .web {
                WebView(html: document.html)
                    .frame(minWidth: 200)
            } else if previewState == .html {
                ScrollView {
                    Text(document.html)
                        .frame(minWidth: 200)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding()
                        .font(.system(size: CGFloat(editorFontSize)))
                        .textSelection(.enabled)
                }
            }
        }
        .frame(minWidth: 400, minHeight: 300)
        .toolbar {
            PreviewToolBarItem(previewState: $previewState)
        }
    }
}

#Preview {
    ContentView(document: .constant(MacMarkDownDocument()))
}
