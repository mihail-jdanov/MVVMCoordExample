//
//  Sheet.swift
//  MVVMCoordExample
//
//  Created by Михаил Жданов on 30.03.2025.
//

import Foundation

enum Sheet: Identifiable {
    
    case lion
    
    var id: String {
        return "\(self)"
    }
    
}
