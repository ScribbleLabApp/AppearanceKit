//
//  File.swift
//  
//
//  Created by Nevio Hirani on 09.03.24.
//

import SwiftUI

protocol AppearanceProviding {
    @available(iOS 13.0, *)
    var colorScheme: ColorScheme? { get set }
}

@available(iOS 17.0, *)
@Observable
public final class APAppearanceProvider: AppearanceProviding {
    private static let appearanceKey = "selectedAppearance"
    private let defaultAppearance: ColorScheme?
    private let userDefaults: UserDefaults

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

    public init(defaultAppearance: ColorScheme? = nil,
                userDefaults: UserDefaults = .standard) {
        self.defaultAppearance = defaultAppearance
        self.userDefaults = userDefaults
    }
}
