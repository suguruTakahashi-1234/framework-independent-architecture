//
//  LicenseDetailPresenter.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/18.
//

import Foundation
import DomainLayer
import Observation

@Observable
final class LicenseDetailPresenter<DIContainer: LicenseDetailPresenterDependency> {
    private let diContainer: DIContainer
    
    init(diContainer: DIContainer) {
        self.diContainer = diContainer
    }

    func onAppear() {
        diContainer.logDriver.log("Show Screen LicenseDetail")
    }
}
