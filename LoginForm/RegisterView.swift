//
//  RegisterView.swift
//  LoginForm
//
//  Created by iFlame on 6/12/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class RegisterView: UIViewController {
    
    @IBOutlet var userRepasswordField: UITextField!
    @IBOutlet var userEmailField: UITextField!
    @IBOutlet var userPasswordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func registerPressed(_ sender: Any) {
        let userEmail = userEmailField.text
        let userPassword = userPasswordField.text
        let userRepassword = userRepasswordField.text
        // check Fields
        
        if ((userEmail?.isEmpty)! || (userPassword?.isEmpty)! || (userRepassword?.isEmpty)!){
            
            // Display Alert Messege
            
            displayMessege(userMessege: "All field are reuired")
            
            return
            
        }
        // Check if Password is Match
        
        if (userPassword != userRepassword){
            
            displayMessege(userMessege: "Password is not Match")
            
            
            return
            
        }
        
        // Store  data
        UserDefaults.standard.set(userEmail, forKey: "userEmail")
        UserDefaults.standard.set(userPassword, forKey: "userPassword")
        UserDefaults.standard.synchronize()
        
        // conformation Alert
        
        let myAlert = UIAlertController.init(title: "Alert", message: "Registration Succsess Complete", preferredStyle: .alert)
        
        let okAction = UIAlertAction.init(title: "Ok", style: .default) { (Action: UIAlertAction) in
            self.dismiss(animated: true, completion: nil)}
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
        
        self.dismiss(animated: true, completion: nil)
    }
    // Create alert messege function
    func displayMessege(userMessege:String) {
        
        let myAlert = UIAlertController.init(title: "Alert", message: userMessege, preferredStyle: .alert)
        
        
        let okAction = UIAlertAction.init(title: "Ok", style: .default, handler: nil)
        
        
        myAlert.addAction(okAction)
        
        
        self.present(myAlert, animated: true, completion: nil)
    }
    
    
}



