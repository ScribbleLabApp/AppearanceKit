//
//  File.swift
//  
//
//  Created by Nevio Hirani on 09.03.24.
//

import SwiftUI

@available(iOS 17.0, *)
struct APAppereanceOption: View {
    @Environment(APAppearanceProvider.self)
    
    private var appearanceProvider
    private let colorScheme: ColorScheme?
    private let cornerRadius: CGFloat = 8.0
    private var isSelected: Bool {
        colorScheme == appearanceProvider.colorScheme
    }
    
    init(colorScheme: ColorScheme?) {
        self.colorScheme = colorScheme
    }
    
    var body: some View {
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
