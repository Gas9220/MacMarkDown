//
//  WebView.swift
//  MacMarkDown
//
//  Created by Gaspare Monte on 25/01/24.
//

import SwiftUI
import WebKit

struct WebView: NSViewRepresentable {
    @AppStorage("styleSheet") var styleSheet: StyleSheet = .github

    var html: String

    var formattedHtml: String {
        return """
          <html>
          <head>
             <link href="\(styleSheet).css" rel="stylesheet">
          </head>
          <body>
             \(html)
          </body>
          </html>
          """
    }

    func makeNSView(context: Context) -> WKWebView {
        WKWebView()
    }

    func updateNSView(_ nsView: WKWebView, context: Context) {
        nsView.loadHTMLString(formattedHtml, baseURL: Bundle.main.resourceURL)
    }
}
