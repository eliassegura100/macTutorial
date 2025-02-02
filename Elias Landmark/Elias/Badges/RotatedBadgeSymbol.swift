//
//  RotatedBadge Symbol.swift
//  Elias Landmarks
//
//  Created by keckuser on 2/1/25.
//

import SwiftUI

struct RotatedBadge_Symbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBadge_Symbol(angle: Angle(degrees: 5))
}
