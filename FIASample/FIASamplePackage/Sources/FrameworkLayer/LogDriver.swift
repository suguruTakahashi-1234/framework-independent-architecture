//
//  File.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/25.
//

import DomainLayer
import Foundation
import FirebaseCrashlytics // Depends on heavy third-party libraries as an example

public class LogDriver: LogDriverProtocol {
    public init() {}
    
    public func log(_ even: Any, file: String, function: String, line: Int) {
        let logMessage = "\(even), file: \(file), function: \(function), line: \(line)"

        // Actually send logs to Crashlytics but print() instead
        // Crashlytics.crashlytics().log(logMessage)

        print("[Crashlytics LogDriver] \(logMessage)")
    }
}

