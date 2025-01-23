//
//  ContentView.swift
//  Elias
//
//  Created by keckuser on 1/21/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
