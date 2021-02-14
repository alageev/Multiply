//
//  ContentView.swift
//  Multiply
//
//  Created by Алексей Агеев on 04.01.2021.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var dataHandler: DataHandler
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        Text(dataHandler.question)
                            .font(.largeTitle)
                    }
                    Section {
                        Text(dataHandler.answerString)
                            .font(.largeTitle)
                    }
                }
                Keyboard()
            }
            .navigationTitle("Правильных ответов подряд: \(dataHandler.numberOfPositiveAnswers)")
            .navigationBarTitleDisplayMode(displayMode())
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    func displayMode() -> NavigationBarItem.TitleDisplayMode {
        switch horizontalSizeClass {
        case .compact:
            return .inline
        case .regular:
            return .large
        default:
            return .automatic
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
