//
//  FoxViewModel.swift
//  MVVMCoordExample
//
//  Created by Mikhail Zhdanov on 30/03/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

import Foundation
import Combine

final class FoxViewModel: ObservableObject {
    
    let name: String

    init(name: String) {
        self.name = name
    }

}
