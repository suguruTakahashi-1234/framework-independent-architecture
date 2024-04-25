//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import Foundation

public protocol LogDriverProtocol {
    func log(_ event: Any, file: String, function: String, line: Int)
}

public extension LogDriverProtocol {
    func log(_ event: Any, file: String = #filePath, function: String = #function, line: Int = #line) {
        log(event, file: URL(string: file)?.lastPathComponent ?? "unknown", function: function, line: line)
    }
}
