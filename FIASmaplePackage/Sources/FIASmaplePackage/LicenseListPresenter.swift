//
//  LicenseListPresenter.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Combine
import LicenseList

final class LicenseListPresenter: ObservableObject {
    @Published var selectedLicense: Library?
    
    func onTapLicense(_ license: Library) {
        selectedLicense = license
    }
}

// 以下でも可
//import Observation
//
//@Observable
//final class LicenseListPresenter {
//    var selectedLicense: Library?
//
//    func onTapLicense(_ license: Library) {
//        selectedLicense = license
//    }
//}
