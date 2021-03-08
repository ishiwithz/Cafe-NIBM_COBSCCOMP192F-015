//
//  RegisterViewController.swift
//  Cafe-NIBM
//
//  Created by Ishanka Withanage on 2021-03-06.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var btnRegister: UIButton!
    
    @IBOutlet weak var txtpassword: UITextField!
    @IBOutlet weak var txtphoneNo: UITextField!
    @IBOutlet weak var txtemail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btnRegister.layer.cornerRadius = 25.0
    }
    

    @IBAction func btnregisterpressed(_ sender: UIButton) {
        
        if let email = txtemail.text , !email.isEmpty, let password = txtpassword.text, !password.isEmpty,let phone = txtphoneNo.text,!phone.isEmpty
        {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                
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
                    self.performSegue(withIdentifier: "linkregistertolocation", sender: self)
                }
              
            }
        }
        
       
    }
   

}
