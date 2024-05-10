//
//  InterfaceView.swift
//  PonBall
//
//  Created by Oliver Wonil Lee on 5/10/24.
//

import SwiftUI

struct InterfaceView: View {

    @EnvironmentObject var unifiedInfo: UnifiedInfo

    var body: some View {

        VStack {
            Spacer()
                .frame(height: 40)
            HStack {
                AddButtonCV()
                SubtractButtonCV()
            }
            Spacer()
        }
    }
}

