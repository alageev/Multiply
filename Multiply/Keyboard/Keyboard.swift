//
//  Keyboard.swift
//  Multiply
//
//  Created by Алексей Агеев on 14.02.2021.
//

import SwiftUI

struct Keyboard: View {
    var body: some View {
        VStack {
            ForEach(0..<3) { row in
                HStack {
                    ForEach(1..<4) { col in
                        NumberButton(for: 3 * row + col)
                    }
                }
            }
            
            HStack {
                EraseButton()
                NumberButton(for: 0)
                SubmitButton()
            }
        }
        .padding([.leading, .trailing, .bottom])
        .background(Color(.systemGroupedBackground))
//        .ignoresSafeArea()
    }
}

struct Keyboard_Previews: PreviewProvider {
    static var previews: some View {
        Keyboard()
    }
}
