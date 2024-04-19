//
//  License.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
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

public extension License {
    static var sample: Self {
        License(id: UUID().uuidString, name: "sample name", body: "sample body")
    }
}

public extension [License] {
    static var samples: Self {
        [
            License(id: UUID().uuidString, name: "sample name 1", body: "sample body 1"),
            License(id: UUID().uuidString, name: "sample name 2", body: "sample body 2"),
            License(id: UUID().uuidString, name: "sample name 3", body: "sample body 3"),
        ]
    }
}
