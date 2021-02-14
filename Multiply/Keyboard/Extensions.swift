//
//  Extensions.swift
//  Multiply
//
//  Created by Алексей Агеев on 14.02.2021.
//

import SwiftUI

extension Text {
    func buttonTextStyle(backgroundColor: Color) -> some View {
        self
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .background(RoundedRectangle(cornerRadius: 10).foregroundColor(backgroundColor))
    }
}
