//
//  NumberButton.swift
//  Multiply
//
//  Created by Алексей Агеев on 14.02.2021.
//

import SwiftUI

struct NumberButton: View {
    
    @EnvironmentObject var dataHandler: DataHandler
    let number: Int
    
    init(for number: Int) {
        self.number = number
    }
    
    var body: some View {
        Button(action: input) {
            Text("\(number)")
                .buttonTextStyle(backgroundColor: Color(.secondarySystemGroupedBackground))
        }
    }
    
    func input() {
        dataHandler.input(number)
    }
}

struct NumberButton_Previews: PreviewProvider {
    static var previews: some View {
        NumberButton(for: 0)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
