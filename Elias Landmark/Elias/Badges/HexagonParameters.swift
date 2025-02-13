//
//  Parameters.swift
//  Elias Landmarks
//
//  Created by keckuser on 2/1/25.
//

import Foundation

struct HexagonParameters {
    struct Segment {
        let line: CGPoint // CGPoint is a structure that contains a point in a two-dimensional coordinate system. For Example: init(x:Int, y: Int)
        let curve: CGPoint
        let control: CGPoint
    }
    // This static variable allows us to change the size of the hexagon anytime, with the implementation of the " + adjustment " to the coordinates to certain segments
    static let adjustment: CGFloat = 0.085 // CGFloat is the basic data type for floating-point scalar values in Core Graphics and related frameworks
    
    static let segments = [
        Segment(
            line: CGPoint(x: 0.60, y: 0.05),
            curve: CGPoint(x: 0.40, y: 0.05),
            control: CGPoint(x: 0.50, y: 0.00)
        ),
        Segment(
            line: CGPoint(x: 0.05, y: 0.20 + adjustment),
            curve: CGPoint(x: 0.00, y: 0.30 + adjustment),
            control: CGPoint(x: 0.00, y: 0.25 + adjustment)
        ),
        Segment(
            line: CGPoint(x:0.00, y: 0.70 - adjustment),
            curve: CGPoint(x: 0.05, y: 0.80 - adjustment),
            control: CGPoint(x: 0.00, y: 0.75 - adjustment)
        ),
        Segment(
            line: CGPoint(x: 0.40, y: 0.95),
            curve: CGPoint(x: 0.60, y: 0.95),
            control: CGPoint(x: 0.50, y: 1.00)
        ),
        Segment(
            line: CGPoint(x: 0.95, y: 0.80 - adjustment),
            curve: CGPoint(x: 1.00, y: 0.70 - adjustment),
            control: CGPoint(x: 1.00, y: 0.75 - adjustment)
        ),
        Segment(
            line: CGPoint(x: 1.00, y: 0.30 + adjustment),
            curve: CGPoint(x:0.95, y: 0.20 + adjustment),
            control: CGPoint(x: 1.00, y: 0.25 + adjustment)
        )
    ]
}
