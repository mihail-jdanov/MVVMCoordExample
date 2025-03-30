//
//  LionView.swift
//  MVVMCoordExample
//
//  Created by Mikhail Zhdanov on 30/03/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

import SwiftUI

struct LionView: View {

    @StateObject private var viewModel = LionViewModel()

    @EnvironmentObject private var coordinator: Coordinator

    var body: some View {
        List {
            Button("Dismiss") {
                coordinator.dismissSheet()
            }
        }
        .navigationTitle("🦁")
    }

}

#Preview {
    LionView()
}
