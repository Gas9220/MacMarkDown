//
//  SettingsView.swift
//  MacMarkDown
//
//  Created by Gaspare Monte on 25/01/24.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("editorFontSize") var editorFontSize: Int = 14
    
    var body: some View {
        Stepper(value: $editorFontSize, in: 10...30) {
            Text("Font size: \(editorFontSize)")
        }
        .frame(width: 260, height: 80)
    }
}

#Preview {
    SettingsView()
}
