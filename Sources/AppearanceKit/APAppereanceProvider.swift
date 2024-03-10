//
//  File.swift
//  
//
//  Created by Nevio Hirani on 09.03.24.
//

import SwiftUI

/// A protocol that defines the appearance customization properties.
///
/// Adopt `AppearanceProviding` to create custom objects responsible for managing color schemes.
/// Implement the `colorScheme` property to get and set the color scheme for your app.
@available(iOS 17.0, *)
protocol AppearanceProviding {
    /// The color scheme currently applied to the app.
    @available(iOS 17.0, *)
    var colorScheme: ColorScheme? { get set }
}

/// A class responsible for providing and managing the appearance of the app.
///
/// Use `APAppearanceProvider` to control and persist the color scheme of your app.
/// This class conforms to the `AppearanceProviding` protocol.
///
/// ```swift
/// let appearanceProvider = APAppearanceProvider()
/// appearanceProvider.colorScheme = .dark
/// ```
@available(iOS 17.0, *)
@Observable
public final class APAppearanceProvider: AppearanceProviding {
    /// The key used for storing the selected appearance in UserDefaults.
    private static let appearanceKey = "selectedAppearance"
    
    /// The default color scheme when no explicit scheme is set.
    private let defaultAppearance: ColorScheme?
    
    /// The UserDefaults instance used for persisting the selected appearance.
    private let userDefaults: UserDefaults

    /// The current color scheme of the app.
    public var colorScheme: ColorScheme? {
        get {
            access(keyPath: \.colorScheme)
            let appearanceTitle = userDefaults.string(forKey: Self.appearanceKey) ?? defaultAppearance.title
            return .init(title: appearanceTitle)
        }
        set {
            withMutation(keyPath: \.colorScheme) {
                userDefaults.set(newValue.title, forKey: Self.appearanceKey)
            }
        }
    }

    /// Creates an instance of `APAppearanceProvider`.
    ///
    /// - Parameters:
    ///   - defaultAppearance: The default color scheme when no explicit scheme is set.
    ///   - userDefaults: The UserDefaults instance used for persisting the selected appearance.
    public init(defaultAppearance: ColorScheme? = nil,
                userDefaults: UserDefaults = .standard) {
        self.defaultAppearance = defaultAppearance
        self.userDefaults = userDefaults
    }
}
