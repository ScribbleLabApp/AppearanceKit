//
//  File.swift
//  
//
//  Created by Nevio Hirani on 09.03.24.
//

import SwiftUI

@available(iOS 17.0, *)
struct APAppereanceModifier: ViewModifier {
    @State private var APAppearanceProvider: APAppearanceProvider

    func body(content: Content) -> some View {
        content
            .preferredColorScheme(APAppearanceProvider.colorScheme)
            .environment(APAppearanceProvider)
    }

    init(_ appearanceProvider: APAppearanceProvider) {
        self._APAppearanceProvider = State(initialValue: appearanceProvider) // .init
    }
}
