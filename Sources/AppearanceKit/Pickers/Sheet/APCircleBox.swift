//
//  File.swift
//  
//
//  Created by Nevio Hirani on 09.03.24.
//

import SwiftUI

/// A SwiftUI view representing a circular checkbox that indicates selection.
///
/// Use `APCircleBox` to display a circular checkbox with an optional checkmark to visually indicate selection status.
///
/// ```swift
/// APCircleBox(isSelected: true)
///     .previewLayout(.sizeThatFits)
/// ```
///
/// - Note: This view is designed for use in scenarios where a simple circular checkbox is required.
@available(iOS 15.0, *)
struct APCircleBox: View {
    /// A boolean indicating whether the checkbox is selected.
    private let isSelected: Bool
    
    /// The size of the circular checkbox.
    private let circleSize: CGFloat
    
    /// Creates an instance of `APCircleBox` with specified selection status and size.
    ///
    /// - Parameters:
    ///   - isSelected: A boolean indicating whether the checkbox is selected.
    ///   - circleSize: The size of the circular checkbox. Defaults to `24.0`.
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
