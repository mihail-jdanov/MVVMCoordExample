//
//  Coordinator.swift
//  MVVMCoordExample
//
//  Created by Михаил Жданов on 30.03.2025.
//

import SwiftUI

class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    @Published var sheet: Sheet?
    @Published var fullScreenCover: FullScreenCover?
    
    func push(_ page: Page) {
        path.append(page)
    }
    
    func present(sheet: Sheet) {
        self.sheet = sheet
    }
    
    func present(fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func dismissSheet() {
        sheet = nil
    }
    
    func dismissFullScreenCover() {
        fullScreenCover = nil
    }
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .dog:
            DogView()
        case .bear:
            BearView()
        case .fox(let name):
            FoxView(name: name)
        }
    }
    
    @ViewBuilder
    func build(sheet: Sheet) -> some View {
        switch sheet {
        case .lion:
            NavigationStack {
                LionView()
            }
        }
    }
    
    @ViewBuilder
    func build(fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .mouse:
            NavigationStack {
                MouseView()
            }
        }
    }
    
}
