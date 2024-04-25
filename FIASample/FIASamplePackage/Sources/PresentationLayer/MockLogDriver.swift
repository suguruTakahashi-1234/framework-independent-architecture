//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import Foundation
import DomainLayer

public final class MockLogDriver: LogDriverProtocol {
    public init() {}
    
    public func log(_ even: Any, file: String, function: String, line: Int) {
        let logMessage = "\(even), file: \(file), function: \(function), line: \(line)"

        print("[Mock LogDriver] \(logMessage)")
    }
}
