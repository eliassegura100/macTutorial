//
//  EliasApp.swift
//  Elias
//
//  Created by keckuser on 1/21/25.
//

import SwiftUI

@main

struct LandmarksApp: App {
    @State private var modelData = ModelData ()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
