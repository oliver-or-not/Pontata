//
//  ClearButtonCV.swift
//  Pontata
//
//  Created by Oliver Wonil Lee on 5/10/24.
//

import SwiftUI

struct ClearButtonCV: View {

    @EnvironmentObject var unifiedInfo: UnifiedInfo

    var body: some View {
        Button(action: {
            unifiedInfo.isClearButtonTapped = true
        }, label: {
            Text("Subtract")
        }).buttonStyle(.bordered)
    }
}
