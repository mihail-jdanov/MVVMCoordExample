//
//  Page.swift
//  MVVMCoordExample
//
//  Created by Михаил Жданов on 30.03.2025.
//

import Foundation

enum Page: Identifiable, Hashable {
    
    case dog
    case bear
    case fox(name: String)
    
    var id: String {
        return "\(self)"
    }
    
}
