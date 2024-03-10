//
//  File.swift
//  
//
//  Created by Nevio Hirani on 09.03.24.
//

import SwiftUI

@available(iOS 17.0, *)
extension View {
    /// Sets the appearance of the view.
    ///
    /// - Parameters:
    ///   - default: The default color scheme. If not provided, the system default will be used.
    ///   - storage: The UserDefaults instance where the color scheme is stored. If not provided, the standard UserDefaults will be used.
    /// - Returns: A view with the specified appearance.
    public func setAppearance(`default`: ColorScheme? = nil,
                              storage: UserDefaults = .standard) -> some View {
        modifier(APAppereanceModifier(.init(defaultAppearance: `default`,
                                            userDefaults: storage)))
    }
}
