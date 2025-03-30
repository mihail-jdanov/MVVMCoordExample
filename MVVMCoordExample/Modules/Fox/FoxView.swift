//
//  FoxView.swift
//  MVVMCoordExample
//
//  Created by Mikhail Zhdanov on 30/03/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

import SwiftUI

struct FoxView: View {

    @StateObject private var viewModel: FoxViewModel

    @EnvironmentObject private var coordinator: Coordinator

    var body: some View {
        List {
            Button("Pop") {
                coordinator.pop()
            }
            Button("Pop to root") {
                coordinator.popToRoot()
            }
        }
        .navigationTitle("🦊 " + viewModel.name)
    }
    
    init(name: String) {
        _viewModel = .init(wrappedValue: .init(name: name))
    }

}

#Preview {
    FoxView(name: "Fox")
}
