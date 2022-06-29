//
//  BadgeBackground.swift
//  Landmarks (iOS)
//
//  Created by family on 29/06/2022.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {
        Path {
            path in
            let width: CGFloat = 100.0
            let height = width
            path.move(to: CGPoint(
                x: width * 0.95,
                y: height * (0.20 + HexagonParameters.adjustment)
            ))
            
            HexagonParameters.segments.forEach{ segment in
                path.addLine(to: CGPoint(
                    x: width * segment.line.x,
                    y: height * segment.line.y
                ))
                
                path.addQuadCurve(
                    to: CGPoint(
                        x: width * segment.curve.x,
                        y: height * segment.curve.y
                    ),
                    control: CGPoint(
                        x: width * segment.control.x,
                        y: height * segment.control.y
                    )
                )
            }
        }
        .fill(.black)
    }
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
