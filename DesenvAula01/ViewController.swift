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
    @IBOutlet weak var ivAvatar: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ivAvatar.image = UIImage(named: "avatarBig")
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        tfNumber.resignFirstResponder()
        view.endEditing(true)
    }
   
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == tfName{
            tfEmail.becomeFirstResponder()
        }else if textField == tfEmail{
            if textField.text == ""{
                return false
            }
            
            tfPassword.becomeFirstResponder()
        }else{
            doSignUp()
        }
        
        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField == tfEmail && textField.text == ""{
            
            return false
        }
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string.lowercased() == "a"{
            return false
        }else{
            return true
        }
    }
    
    
    
    
    @IBAction func doSignUp() {
        print("Fazendo o cadastro")
         view.endEditing(true)
    }

}

