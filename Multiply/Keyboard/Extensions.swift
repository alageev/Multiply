//
//  Extensions.swift
//  Multiply
//
//  Created by Алексей Агеев on 14.02.2021.
//

import SwiftUI

extension View {
    func buttonTextStyle(backgroundColor: Color) -> some View {
        self
            .font(.largeTitle)
            .padding()
            .foregroundColor(.primary)
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .foregroundColor(backgroundColor.opacity(0.9))
            )
    }
}
