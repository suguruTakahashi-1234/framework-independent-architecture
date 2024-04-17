//
//  LicenseListPresenter.swift
//
//
//  Created by Suguru Takahashi on 2024/04/17.
//

import Combine
import LicenseList

final class LicenseListPresenter: ObservableObject {
    @Published private(set) var licenses: [Library] = []
    @Published var selectedLicense: Library?
    
    func onAppear() {
        licenses = Library.libraries
    }
    
    func onTapLicense(_ license: Library) {
        selectedLicense = license
    }
}
