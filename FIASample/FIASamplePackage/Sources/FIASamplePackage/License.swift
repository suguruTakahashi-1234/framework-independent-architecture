//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import Foundation

public struct License: Identifiable, Hashable {
    public let id: String
    public let name: String
    public let body: String

    public init(id: String, name: String, body: String) {
        self.id = id
        self.name = name
        self.body = body
    }
}
