//
//  LoginVC.swift
//  Mesh
//
//  Created by Vic Sukiasyan on 4/30/18.
//  Copyright © 2018 Vic Sukiasyan. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    
    @IBOutlet weak var emailField: InsetTextField!
    @IBOutlet weak var passwordField: InsetTextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        emailField.delegate = self
        passwordField.delegate = self
    }

 
    @IBAction func signInBtnWasPressed(_ sender: UIButton) {
        if emailField.text != nil && passwordField != nil {
            AuthService.instance.loginUser(withEmail: emailField.text!, andPassword: passwordField.text!, loginComplete: { (success, loginError) in
                if success {
                    self.dismiss(animated: true, completion: nil)
                } else {
                    print(String(describing: loginError?.localizedDescription))
                }
                
                AuthService.instance.registerUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, userCreationComplete: { (success, registrationError) in
                    if success {
                         AuthService.instance.loginUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, loginComplete: { (success, nil) in
                            print("Successfully registered user.")
                            self.dismiss(animated: true, completion: nil)
                        })
                        
                    } else {
                        print(String(describing: registrationError?.localizedDescription))
                    }
                })
            })
        }
    }
    
    @IBAction func closeBtnWasPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}


extension LoginVC: UITextFieldDelegate {
    
}
