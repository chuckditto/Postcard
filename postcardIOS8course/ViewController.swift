//
//  ViewController.swift
//  postcardIOS8course
//
//  Created by Charles on 9/22/14.
//  Copyright (c) 2014 Charles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!    
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterAMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton! // this button also has an action connected to it, this an outlet connection to modified after the fact
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMeilButtonPressed(sender: UIButton) {
        
        messageLabel.hidden = false
        messageLabel.text = enterAMessageTextField.text
        enterAMessageTextField.text = "" // resets text field to nada
        enterAMessageTextField.resignFirstResponder()  // hides keyboard
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail sent!", forState:UIControlState.Normal)
        
        
        
        
        // code to evaluate when we press the button
    }

}

