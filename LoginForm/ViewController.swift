//
//  ViewController.swift
//  LoginForm
//
//  Created by iFlame on 6/12/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        let userIsLoggedIn = UserDefaults.standard.bool(forKey: "isUserLoggedIn")
        if (!userIsLoggedIn){
        performSegue(withIdentifier: "loginView", sender: self)
        }
    }

    @IBAction func logOutPressed(_ sender: Any) {
        
        UserDefaults.standard.set(false, forKey: "isUserLoggedIn")
        UserDefaults.standard.synchronize()
          performSegue(withIdentifier: "loginView", sender: self)
       
    }

}
`
