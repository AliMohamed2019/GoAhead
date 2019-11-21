//
//  ViewController.swift
//  GoAhead
//
//  Created by Ali Mohamed on 11/20/19.
//  Copyright © 2019 Maged. All rights reserved.
//

import UIKit


@available(iOS 13.0, *)
class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTf: UITextField!
    @IBOutlet weak var passwordTf: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func forgetPasswordBtnPressed(_ sender: UIButton) {
        let forgetPasswordVc = storyboard?.instantiateViewController(identifier: "ForgetPasswordViewController")
            present(forgetPasswordVc!, animated: true, completion: nil)
            
    }
    
    @IBAction func signInbtnPressed(_ sender: UIButton) {
    }
    
    @IBAction func registerBtnPressed(_ sender: UIButton) {
        let registerVc = storyboard?.instantiateViewController(identifier: "RegisterViewController")
                   present(registerVc!, animated: true, completion: nil)
    }
    
}
