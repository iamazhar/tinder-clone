//
//  RegistrationViewModel.swift
//  DatingFirestore
//
//  Created by Azhar Anwar on 12/10/18.
//  Copyright © 2018 Azhar Anwar. All rights reserved.
//

import UIKit

class RegistrationViewModel {
    
    var fullName: String? {
        didSet {
            checkFormValidity()
        }
    }
    var email: String? { didSet { checkFormValidity() } }
    var password: String? { didSet { checkFormValidity() } }
    
    fileprivate func checkFormValidity() {
        let isFormValid = fullName?.isEmpty == false && email?.isEmpty == false && password?.isEmpty == false
        isFormValidObserver?(isFormValid)
    }
    
    // Reactive Programming
    var isFormValidObserver: ((Bool) -> ())?
}
