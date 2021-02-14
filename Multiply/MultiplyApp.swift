//
//  MultiplyApp.swift
//  Multiply
//
//  Created by Алексей Агеев on 04.01.2021.
//

import SwiftUI

@main
struct MultiplyApp: App {
    
    @StateObject var dataHandler = DataHandler()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dataHandler)
        }
    }
}
