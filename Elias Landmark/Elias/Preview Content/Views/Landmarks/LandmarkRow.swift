//
//  LandmarkRow.swift
//  Elias
//
//  Created by keckuser on 1/23/25.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}

//#Preview ("Turtle Rock"){ // Names the Preview
//    LandmarkRow(landmark: landmarks[0])
//}
//
//#Preview ("Salmon"){
//    LandmarkRow(landmark: landmarks[1])
//}
