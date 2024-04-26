//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/26.
//

import Foundation

public struct License: Identifiable, Equatable {
    public let id: String
    public let name: String
    public let body: String
    
    public init(id: String, name: String, body: String) {
        self.id = id
        self.name = name
        self.body = body
    }
}

public extension [License] {
    static var samples: [License] {
        [
            .init(id: "sample license 1", name: "sample license 1", body: "sample license body 1"),
            .init(id: "sample license 2", name: "sample license 2", body: "sample license body 2"),
            .init(id: "sample license 3", name: "sample license 3", body: "sample license body 3"),
        ]
    }
}
