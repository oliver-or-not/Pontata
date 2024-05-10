//
//  SubtractButtonCV.swift
//  PonBall
//
//  Created by Oliver Wonil Lee on 5/10/24.
//

import SwiftUI

struct SubtractButtonCV: View {

    @EnvironmentObject var unifiedInfo: UnifiedInfo

    var body: some View {
        Button(action: {
            unifiedInfo.isSubtractButtonTapped = true
        }, label: {
            Text("Subtract")
        }).buttonStyle(.bordered)
    }
}

