//
//  ViewController.swift
//  DesenvAula01
//
//  Created by Usuário Convidado on 28/08/17.
//  Copyright © 2017 Douglas Araujo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        tfNumber.resignFirstResponder()
        view.endEditing(true)
    }
   
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == tfName{
            tfEmail.becomeFirstResponder()
        }else if textField == tfEmail{
            tfPassword.becomeFirstResponder()
        }else{
            tfPassword.resignFirstResponder()
        }
        
        return true
    }

}

