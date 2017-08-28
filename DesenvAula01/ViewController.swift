//
//  ViewController.swift
//  DesenvAula01
//
//  Created by Usuário Convidado on 28/08/17.
//  Copyright © 2017 Douglas Araujo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        tfNumber.resignFirstResponder()
        view.endEditing(true)
    }
   


}

