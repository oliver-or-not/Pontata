//
//  PonBall.swift
//  PonBall
//
//  Created by Oliver Wonil Lee on 5/9/24.
//

import UIKit

class PonBall: Identifiable {

    var radius: CGFloat
    var color: (r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat)

    var px: CGFloat
    var py: CGFloat

    var vx: CGFloat
    var vy: CGFloat

    var weight: CGFloat

    init(radius: CGFloat, color: (r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat), px: CGFloat, py: CGFloat, vx: CGFloat, vy: CGFloat, weight: CGFloat) {
        self.radius = radius
        self.color = color
        self.px = px
        self.py = py
        self.vx = vx
        self.vy = vy
        self.weight = weight
    }
}
