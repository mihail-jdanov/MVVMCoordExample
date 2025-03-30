//
//  DogView.swift
//  MVVMCoordExample
//
//  Created by Михаил Жданов on 30.03.2025.
//

import SwiftUI

struct DogView: View {
    
    @StateObject private var viewModel = DogViewModel()
    
    @EnvironmentObject private var coordinator: Coordinator
        
    var body: some View {
        List {
            Button("Push 🐻") {
                coordinator.push(.bear)
            }
            Button("Push 🐻 + 🦊") {
                coordinator.push(.bear)
                coordinator.push(.fox(name: "Firefox"))
            }
            Button("Present 🦁") {
                coordinator.present(sheet: .lion)
            }
            Button("Present 🐭") {
                coordinator.present(fullScreenCover: .mouse)
            }
        }
        .navigationTitle("🐶")
    }
    
}
