//
//  MouseView.swift
//  MVVMCoordExample
//
//  Created by Mikhail Zhdanov on 30/03/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

import SwiftUI

struct MouseView: View {

    @StateObject private var viewModel = MouseViewModel()

    @EnvironmentObject private var coordinator: Coordinator

    var body: some View {
        List {
            Button("Dismiss") {
                coordinator.dismissFullScreenCover()
            }
        }
        .navigationTitle("🐭")
    }

}

#Preview {
    MouseView()
}
