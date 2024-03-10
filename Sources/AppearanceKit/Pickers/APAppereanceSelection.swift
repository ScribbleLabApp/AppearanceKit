//
//  File.swift
//  
//
//  Created by Nevio Hirani on 09.03.24.
//

import SwiftUI

@available(iOS 17.0, *)
struct APAppereanceSelection: View {
    @Environment(APAppearanceProvider.self)
    private var appearanceProvider
    
    @Environment(\.dismiss)
    private var dismiss
    
    private var colorSchemeCases: [ColorScheme?] {
        [.light, .dark, .none]
    }
    
    var body: some View {
        HStack {
            Spacer()
            ForEach(colorSchemeCases.indices, id: \.self) { index in
                if let colorScheme = colorSchemeCases[index] {
                    APAppereanceOption(colorScheme: colorScheme)
                        .frame(maxWidth: .infinity)
                }
            }
            Spacer()
        }
        .padding()
        .preferredColorScheme(appearanceProvider.colorScheme)
    }
}
