//
//  LoginView.swift
//  LoginForm
//
//  Created by iFlame on 6/12/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class LoginView: UIViewController {

    @IBOutlet var userPasswordField: UITextField!
    @IBOutlet var userEmailField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        
        let userEmail = userEmailField.text
        let userPassword = userPasswordField.text
        
        let userEmailStored = UserDefaults.standard.string(forKey: "userEmail")
        let userPasswordStored = UserDefaults.standard.string(forKey: "userPassword")
        if (userEmailStored == userEmail){
            if (userPasswordStored == userPassword){
                // Login Succsess fully
                
                UserDefaults.standard.bool(forKey: "isUserLoggedIn")
                UserDefaults.standard.synchronize()
                self.dismiss(animated: true, completion: nil)
            }
        }
    }

    
}
