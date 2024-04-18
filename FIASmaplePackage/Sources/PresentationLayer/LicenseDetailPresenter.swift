//
//  LicenseDetailPresenter.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/18.
//

import Combine
import Foundation
import DomainLayer

final class LicenseDetailPresenter<DIContainer: DIContainerProtocol>: ObservableObject {
    private let logDriver: DIContainer.LogDriverProtocolAssocType
    
    init(diContainer: DIContainer) {
        self.logDriver = diContainer.logDriver
    }

    func onAppear() {
        logDriver.log("Show Screen LicenseDetail")
    }
}
