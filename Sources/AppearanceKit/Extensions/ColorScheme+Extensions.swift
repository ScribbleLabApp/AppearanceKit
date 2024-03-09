//
//  File.swift
//  
//
//  Created by Nevio Hirani on 09.03.24.
//

import SwiftUI

@available(iOS 13.0, *)
public extension ColorScheme? {
    /// Icon representation of the color scheme.
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
    
    var name: String {
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
