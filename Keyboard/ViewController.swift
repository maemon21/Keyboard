//
//  ViewController.swift
//  Keyboard
//
//  Created by EMoshU on 2020/03/27.
//  Copyright © 2020 EMoshU. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var mailTextField: UITextField!
    @IBOutlet var passTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mailTextField.delegate = self
        passTextField.delegate = self
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        mailTextField.resignFirstResponder()
        passTextField.resignFirstResponder()
    }
    
    @IBAction func signIn(_ sender: Any) {
        
        resultLabel.text = mailTextField.text! + " " + passTextField.text!
        
        
    }
    
}

