//
//  SubmitButton.swift
//  Multiply
//
//  Created by Алексей Агеев on 14.02.2021.
//

import SwiftUI

struct SubmitButton: View {
    
    @EnvironmentObject var dataHandler: DataHandler
    
    var body: some View {
        Button(action: dataHandler.submit) {
            Text("⮐")
                .buttonTextStyle(backgroundColor: .green)
        }
    }
}

struct SubmitButton_Previews: PreviewProvider {
    static var previews: some View {
        SubmitButton()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
