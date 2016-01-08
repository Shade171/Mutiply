//
//  ViewController.swift
//  Multiply
//
//  Created by cstark on 9/11/15.
//  Copyright (c) 2015 cstark. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var myFirstTextField: UITextField!
    @IBOutlet weak var mySecondTextField: UITextField!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var SegController: UISegmentedControl!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func myButton(sender: AnyObject)
    {
        let myFirstTextFieldString = myFirstTextField.text
        let myFirstTextFieldDouble = Double(myFirstTextFieldString!)
        let mySecondTextFieldString = mySecondTextField.text
        let mySecondTextFieldDouble = Double(mySecondTextFieldString!)
        let index = SegController.selectedSegmentIndex
        var answer : Double!
        switch index
        {
        case 0:
            answer = myFirstTextFieldDouble! + mySecondTextFieldDouble!
            break
            
        case 1:
            answer = myFirstTextFieldDouble! - mySecondTextFieldDouble!
            break
            
        case 2:
            answer = myFirstTextFieldDouble! * mySecondTextFieldDouble!
            break
            
        case 3:
            answer = myFirstTextFieldDouble! / mySecondTextFieldDouble!
            break
            
        default:
            break
            
        }
        myLabel.text = "\(answer)"
        if (answer == 64)
        {
            myImageView.image = UIImage(named: "myMKImage")}
        else if answer % 2 == 1
        {
            myImageView.image = UIImage(named:"CookieMonsterWaving")
        }
        else if answer % 2 == 0
        {
            myImageView.image = UIImage(named:"funnyPic")
        }
        myFirstTextField.resignFirstResponder()
        mySecondTextField.resignFirstResponder()
    }
}