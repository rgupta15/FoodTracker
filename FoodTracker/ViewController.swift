//
//  ViewController.swift
//  FoodTracker
//
//  Created by rohit gupta on 1/13/18.
//  Copyright © 2018 rohit gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK:Properties

    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var mealNameLabel: UILabel!
    
    //MARK: UITextFieldDelegate

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        mealNameLabel.text = textField.text
    }
    
    //MARK:Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        
        mealNameLabel.text = "Default Text"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
    }


}

