//
//  EraseButton.swift
//  Multiply
//
//  Created by Алексей Агеев on 14.02.2021.
//

import SwiftUI

struct EraseButton: View {
    
    @EnvironmentObject var dataHandler: DataHandler
    
    var body: some View {
        Button(action: dataHandler.erase) {
            Image(systemName: "delete.left")
                .buttonTextStyle(backgroundColor: .red)
        }
    }
}

struct EraseButton_Previews: PreviewProvider {
    static var previews: some View {
        EraseButton()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
