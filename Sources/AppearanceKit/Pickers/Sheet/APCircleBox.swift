//
//  File.swift
//  
//
//  Created by Nevio Hirani on 09.03.24.
//

import SwiftUI

@available(iOS 15.0, *)
struct APCircleBox: View {
    private let isSelected: Bool
    private let circleSize: CGFloat
    
    init(isSelected: Bool, circleSize: CGFloat = 24.0) {
        self.isSelected = isSelected
        self.circleSize = circleSize
    }
    
    var body: some View {
        Image(systemName: isSelected ? "checkmark.circle.fill" : "circle")
            .resizable()
            .frame(width: circleSize, height: circleSize)
            .foregroundStyle(isSelected ? .orange : .secondary)
    }
}
