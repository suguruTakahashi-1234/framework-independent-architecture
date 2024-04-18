//
//  LicenseDetailPresenter.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/18.
//

import Combine
import Foundation
import DomainLayer

final class LicenseDetailPresenter: ObservableObject {
    private let logDriver: any LogDriverProtocol
    
    init(diContainer: any DIContainerProtocol) {
        self.logDriver = diContainer.logDriver
    }

    func onAppear() {
        logDriver.log("Show Screen LicenseDetail")
    }
}
