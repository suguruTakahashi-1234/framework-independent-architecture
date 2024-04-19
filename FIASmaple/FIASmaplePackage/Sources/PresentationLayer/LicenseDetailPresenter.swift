//
//  LicenseDetailPresenter.swift
//  
//
//  Created by Suguru Takahashi on 2024/04/18.
//

import Combine
import Foundation
import DomainLayer

final class LicenseDetailPresenter<DIContainer: LicenseDetailPresenterDependency>: ObservableObject {
    private let diContainer: DIContainer
    
    init(diContainer: DIContainer) {
        self.diContainer = diContainer
    }

    func onAppear() {
        diContainer.logDriver.log("Show Screen LicenseDetail")
    }
}
