//
//  BadgeBackground.swift
//  Elias Landmarks
//
//  Created by keckuser on 2/1/25.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in  // you can use Paths to combine lines, curves, and other drawing primitives to form more complex shapes
                var width: CGFloat = min(geometry.size.width, geometry.size.height) // Add a starting point to the path, assuming a container with size 100 x 100 px
                let height = width
                let xScale: CGFloat = 0.832
                let xOffset = (width * (1.0 - xScale)) / 2.0
                width *= xScale
                path.move(  // the move (to:) method moves the drawing cursor within the bounds of a shape as though an imaginary pen is hovering over the area, waiting to start drawing.
                    to: CGPoint(
                        x: width * 0.95 + xOffset,
                        y: height * (0.20 + HexagonParameters.adjustment)
                    )
                )
                
                HexagonParameters.segments.forEach { segment in  // Draw the lines for each point of the shape data to create a rough hexagonal shape
                    path.addLine(   // The addLine (to:) method takes a single point and draws it. Successive calles to addLine (to:) begin a line at the previous point and continue to the new point
                        to: CGPoint(
                            x: width * segment.line.x + xOffset,
                            y: height * segment.line.y
                        )
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(
                            x: width * segment.curve.x + xOffset,
                            y: height * segment.curve.y
                        ),
                        control: CGPoint(
                            x: width * segment.control.x + xOffset,
                            y: height * segment.control.y
                        )
                    )
                }
            }
            .fill(.linearGradient (
                Gradient(colors: [Self.gradientStart, Self.gradientEnd]),
                startPoint: UnitPoint(x: 0.5, y: 0),
                endPoint: UnitPoint(x: 0.5, y: 0.6)
            ))
        }
        .aspectRatio(1, contentMode: .fit)
    }
    static let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    static let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
}

#Preview {
    BadgeBackground()
}
