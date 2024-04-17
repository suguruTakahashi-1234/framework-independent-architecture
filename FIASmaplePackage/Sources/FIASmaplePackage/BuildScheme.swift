//
//  BuildScheme.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Foundation

public enum BuildScheme {
    case development
    case production
    
    var name: String {
        switch self {
        case .development:
            "Development"
        case .production:
            "Production"
        }
    }
}
