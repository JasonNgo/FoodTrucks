//
//  RegisterViewController.swift
//  FoodTrucks
//
//  Created by Jason Ngo on 2018-09-06.
//  Copyright © 2018 Jason Ngo. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    static let textFieldHeight: CGFloat = 50
    
    let registerViewModel = RegisterViewModel()
    
    // MARK: Views
    
    let usernameTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "username"
        tf.textAlignment = .center
        tf.constrain(width: 0, height: textFieldHeight)
        tf.layer.cornerRadius = textFieldHeight / 2
        tf.addTarget(self, action: #selector(handleTextFieldChange), for: .editingChanged)
        return tf
    }()
    
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "password"
        tf.isSecureTextEntry = true
        tf.textAlignment = .center
        tf.constrain(width: 0, height: textFieldHeight)
        tf.layer.cornerRadius = textFieldHeight / 2
        tf.addTarget(self, action: #selector(handleTextFieldChange), for: .editingChanged)
        return tf
    }()
    
    let registerButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Register", for: .normal)
        return button
    }()
    
    @objc func handleTextFieldChange(textField: UITextField) {
        if textField == usernameTextField {
            registerViewModel.username = textField.text
        } else if textField == passwordTextField {
            registerViewModel.password = textField.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        // setup listener for view model
        registerViewModel.isValidListener = { [unowned self] (isValid) in
            self.registerButton.isEnabled = isValid
        }
        
    }
    
} // RegisterViewController
