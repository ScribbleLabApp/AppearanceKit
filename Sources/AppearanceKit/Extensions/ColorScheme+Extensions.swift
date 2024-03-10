//
//  File.swift
//  
//
//  Created by Nevio Hirani on 09.03.24.
//

import SwiftUI

/// An extension on `ColorScheme` providing additional functionality and customization.
///
/// Use this extension to easily access icon representations, images, titles, and initialize color schemes.
///
/// ```swift
/// let lightIcon = ColorScheme.light.icon
/// let darkImage = ColorScheme.dark.image
/// let systemTitle = ColorScheme.none.title
/// let customScheme = ColorScheme(title: "Custom")
/// ```
///
/// - Note: The extension enhances the default `ColorScheme` with more descriptive representations and initialization options.
@available(iOS 13.0, *)
public extension ColorScheme? {
    /// A system SF Symbol icon representing the color scheme.
    var icon: Image {
        switch self {
        case .light:
            return Image(systemName: "sun.max")
        case .dark:
            return Image(systemName: "moon")
        case .none:
            return Image(systemName: "circle.lefthalf.filled")
        @unknown default:
            fatalError("Unknown color scheme")
        }
    }
    
    /// An image representation of the color scheme.
    var image: Image {
        switch self {
        case .light:
            return Image(.light)
        case .dark:
            return Image(.dark)
        case .none:
            return Image(.system)
        @unknown default:
            fatalError("Unknown APColorScheme")
        }
    }
    
    /// The human-readable title of the color scheme.
    var title: String {
        switch self {
        case .light:
            return "Light"
        case .dark:
            return "Dark"
        case .none:
            return "System"
        @unknown default:
            fatalError("Unknown APColorScheme")
        }
    }
    
    /// Creates a `ColorScheme` instance based on the specified title.
    ///
    /// - Parameter title: The title representing the desired color scheme.
    init(title: String) {
        switch title {
        case "Light":
            self = .light
        case "Dark":
            self = .dark
        case "System":
            self = .none
        default:
            self = .none
        }
    }
}
