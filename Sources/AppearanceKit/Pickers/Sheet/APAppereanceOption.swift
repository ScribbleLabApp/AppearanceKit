//
//  File.swift
//  
//
//  Created by Nevio Hirani on 09.03.24.
//

import SwiftUI

/// A SwiftUI view representing an appearance option for customizing the color scheme of the app.
///
/// Use `APAppereanceOption` to display a visual representation of a color scheme, its title, and a selection indicator.
/// Tap gestures on the view update the app's color scheme through the `APAppearanceProvider`.
///
/// ```swift
/// APAppereanceOption(colorScheme: .dark)
///     .previewLayout(.sizeThatFits)
/// ```
///
/// - Note: This view relies on `APAppearanceProvider` to manage and persist the selected color scheme.
@available(iOS 17.0, *)
public struct APAppereanceOption: View {
    /// The environment object providing the current appearance settings for the app.
    @Environment(APAppearanceProvider.self)
    
    private var appearanceProvider
    
    /// The color scheme represented by this option.
    private let colorScheme: ColorScheme?
    
    /// The corner radius of the visual representation.
    private let cornerRadius: CGFloat = 8.0
    
    /// A boolean indicating whether this appearance option is currently selected.
    private var isSelected: Bool {
        colorScheme == appearanceProvider.colorScheme
    }
    
    /// Creates an instance of `APAppereanceOption` with a specified color scheme.
    ///
    /// - Parameter colorScheme: The color scheme represented by this option.
    public init(colorScheme: ColorScheme?) {
        self.colorScheme = colorScheme
    }
    
    public var body: some View {
        VStack(spacing: 12) {
            colorScheme.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80)
                .clipShape(.rect(cornerRadius: cornerRadius))
                .overlay {
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .stroke(Color.secondary, lineWidth: 1.0)
                }
            
            Text(colorScheme.title)
                .font(.system(size: 18, weight: .medium))
                .fixedSize()
            
            APCircleBox(isSelected: isSelected)
        }
        .onTapGesture {
            appearanceProvider.colorScheme = colorScheme
        }
    }
}
