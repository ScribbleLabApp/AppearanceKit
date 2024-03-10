//
//  File.swift
//  
//
//  Created by Nevio Hirani on 09.03.24.
//

import SwiftUI

/// A custom view modifier that applies a specific appearance provider to the content.
///
/// Use `APAppereanceModifier` to customize the color scheme of a view based on the provided `APAppearanceProvider`.
///
/// ```swift
/// MyView()
///     .modifier(APAppereanceModifier(appearanceProvider))
/// ```
///
/// - Note: This modifier uses the `preferredColorScheme` and `environment` functions to apply the color scheme to the content.
@available(iOS 17.0, *)
public struct APAppereanceModifier: ViewModifier {
    /// The state property representing the `APAppearanceProvider`.
    @State private var APAppearanceProvider: APAppearanceProvider

    /// Applies the appearance provider's color scheme to the content.
    ///
    /// - Parameters:
    ///   - content: The content to which the appearance will be applied.
    /// - Returns: A modified view with the specified appearance.
    public func body(content: Content) -> some View {
        content
            .preferredColorScheme(APAppearanceProvider.colorScheme)
            .environment(APAppearanceProvider)
    }

    /// Creates an instance of `APAppereanceModifier` with the given `APAppearanceProvider`.
    ///
    /// - Parameter appearanceProvider: The appearance provider to be applied.
    public init(_ appearanceProvider: APAppearanceProvider) {
        self._APAppearanceProvider = State(initialValue: appearanceProvider) // .init
    }
}
