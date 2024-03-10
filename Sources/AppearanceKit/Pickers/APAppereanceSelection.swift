//
//  File.swift
//  
//
//  Created by Nevio Hirani on 09.03.24.
//

import SwiftUI

/// A SwiftUI view that allows users to select from various color schemes.
///
/// Use `APAppereanceSelection` to provide a visual representation of different color schemes
/// and enable users to choose the desired appearance for the app.
///
/// ```swift
/// APAppereanceSelection()
/// ```
///
/// - Note: This view relies on the `APAppearanceProvider` environment object to manage the selected color scheme.
@available(iOS 17.0, *)
public struct APAppereanceSelection: View {
    /// The environment object providing the current appearance settings for the app.
    @Environment(APAppearanceProvider.self)
    private var appearanceProvider
    
    /// The environment variable used to dismiss the current view.
    @Environment(\.dismiss)
    private var dismiss
    
    /// An array of optional ColorScheme values representing different appearance options.
    private var colorSchemeCases: [ColorScheme?] {
        [.light, .dark, .none]
    }
    
    public var body: some View {
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
