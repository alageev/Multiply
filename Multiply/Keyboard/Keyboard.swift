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
            HStack {
                NumberButton(number: 1)
                Spacer()
                NumberButton(number: 2)
                Spacer()
                NumberButton(number: 3)
            }
            
            HStack {
                NumberButton(number: 4)
                NumberButton(number: 5)
                NumberButton(number: 6)
            }
            
            HStack {
                NumberButton(number: 7)
                NumberButton(number: 8)
                NumberButton(number: 9)
            }
            
            HStack {
                EraseButton()
                NumberButton(number: 0)
                SubmitButton()
            }
        }
        .padding([.leading, .trailing, .bottom])
//        .ignoresSafeArea()
    }
}

struct Keyboard_Previews: PreviewProvider {
    static var previews: some View {
        Keyboard()
    }
}
