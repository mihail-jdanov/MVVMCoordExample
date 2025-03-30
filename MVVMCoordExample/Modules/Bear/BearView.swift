//
//  BearView.swift
//  MVVMCoordExample
//
//  Created by Mikhail Zhdanov on 30/03/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

import SwiftUI

struct BearView: View {

    @StateObject private var viewModel = BearViewModel()

    @EnvironmentObject private var coordinator: Coordinator

    var body: some View {
        List {
            Button("Push 🦊") {
                coordinator.push(.fox(name: viewModel.foxName))
            }
            Button("Pop") {
                coordinator.pop()
            }
        }
        .navigationTitle("🐻")
    }

}

#Preview {
    BearView()
}
