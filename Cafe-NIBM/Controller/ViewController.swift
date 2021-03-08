//
//  ViewController.swift
//  Cafe-NIBM
//
//  Created by Ishanka Withanage on 2021-02-21.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var txtpassword: UITextField!
    
    @IBOutlet weak var txtemail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnLogin.layer.cornerRadius = 25.0
        
    }

    @IBAction func btnLoginpressed(_ sender: UIButton) {
        
        
        
        
        if let email = txtemail.text , !email.isEmpty, let password = txtpassword.text, !password.isEmpty
        {
        Auth.auth().signIn(withEmail: email, password: password) {  authResult, error in
            
            if let e = error {
                
                
                let dialogMessage = UIAlertController(title: "Alert", message: e.localizedDescription, preferredStyle: .alert)
                
            
                let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                    print("Ok button tapped")
                 })
                
                
                dialogMessage.addAction(ok)
                
                self.present(dialogMessage, animated: true, completion: nil)
                
                print(e.localizedDescription)
            }
            else
            {
                self.performSegue(withIdentifier: "linklogintoLocation", sender: self)
            }
        }
        }
    }
    
}

