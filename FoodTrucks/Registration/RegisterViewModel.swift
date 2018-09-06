//
//  RegisterViewModel.swift
//  FoodTrucks
//
//  Created by Jason Ngo on 2018-09-06.
//  Copyright © 2018 Jason Ngo. All rights reserved.
//

import Foundation

class RegisterViewModel {
    
    var username: String? {
        didSet {
            checkValidity()
        }
    }
    
    var password: String? {
        didSet {
            checkValidity()
        }
    }
    
    // bind to view controller
    var isValidListener: ((Bool) -> Void)?
    
    fileprivate func checkValidity() {
        let isValid = username?.isEmpty == false && password?.isEmpty == false
        isValidListener?(isValid)
    }
    
} // RegisterViewModel
