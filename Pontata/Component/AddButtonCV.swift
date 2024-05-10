//
//  AddButtonCV.swift
//  PonBall
//
//  Created by Oliver Wonil Lee on 5/10/24.
//

import SwiftUI

struct AddButtonCV: View {

    @EnvironmentObject var unifiedInfo: UnifiedInfo

    var body: some View {
        Button(action: {
            unifiedInfo.isAddButtonTapped = true
        }, label: {
            Text("Add")
        }).buttonStyle(.bordered)
    }
}
