//
//  PhysicalCircleCV.swift
//  PonBall
//
//  Created by Oliver Wonil Lee on 5/10/24.
//

import SwiftUI

struct PhysicalCircleCV: View {

    var ponBall: PonBall

    var body: some View {
        Circle()
        .fill(Color(
            red: ponBall.color.r,
            green: ponBall.color.g,
            blue:  ponBall.color.b,
            opacity: ponBall.color.a
        ))
        .frame(
            width: ponBall.radius * 2,
            height: ponBall.radius * 2,
            alignment: .center
        )
    }

    init(ponBall: PonBall) {
        self.ponBall = ponBall
    }
}

#Preview {
    PhysicalCircleCV(ponBall: PonBall(
        radius: 20,
        color: (0.3, 0.4, 0.5, 0.7),
        px: 200,
        py: 200,
        vx: 200,
        vy: 200,
        weight: 10
    ))
}
