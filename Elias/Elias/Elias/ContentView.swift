//
//  ContentView.swift
//  Elias
//
//  Created by keckuser on 1/21/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            VStack {
                MapView()
                    .frame(height: 300)
                
                CircleImage()
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack (alignment: .leading){
                    Text("Turtle Rock")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                    HStack {
                        Text("Joshua Tree National Park")
                            .font(.subheadline)
                        Spacer()
                        Text("California")
                            .font(.subheadline)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    Divider()
                    
                    Text("About Turtle Rock")
                        .font(.title2)
                    Text("Descriptive text goes here.")
                }
                .padding()
                
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
