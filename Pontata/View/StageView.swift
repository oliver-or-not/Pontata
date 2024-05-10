//
//  StageView.swift
//  PonBall
//
//  Created by Oliver Wonil Lee on 5/10/24.
//

import SwiftUI

struct StageView: View {

    @EnvironmentObject var unifiedInfo: UnifiedInfo
    @State private var ponBalls: [PonBall] = []

    var body: some View {
        ZStack {
            Spacer()
            ForEach(ponBalls, id: \.id) { ponBall in
                PhysicalCircleCV(ponBall: ponBall)
                    .position(CGPoint(x: ponBall.px, y: ponBall.py))
            }
        }
        .ignoresSafeArea()
        .onReceive(unifiedInfo.$ponBalls) { updatedPonBalls in
            self.ponBalls = updatedPonBalls
        }
    }
}
