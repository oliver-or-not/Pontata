//
//  ContentView.swift
//  PonBall
//
//  Created by Oliver Wonil Lee on 5/9/24.
//

import SwiftUI

struct ContentView: View {

    @StateObject var unifiedInfo = UnifiedInfo(
        width: UIScreen.main.bounds.width,
        height: UIScreen.main.bounds.height
    )

    var body: some View {
        ZStack {
            StageView()
                .environmentObject(unifiedInfo)
            InterfaceView()
                .environmentObject(unifiedInfo)
        }
    }
}


#Preview {
    ContentView()
}
