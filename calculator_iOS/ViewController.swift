//
//  ViewController.swift
//  calculator_iOS
//
//  Created by Robert Sobczyk on 05.11.2017.
//  Copyright © 2017 Robert Sobczyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DivideButton: RoundButton!
    @IBOutlet weak var MultiplyButton: RoundButton!
    @IBOutlet weak var MinusButton: RoundButton!
    @IBOutlet weak var PlusButton: RoundButton!
    
    var numberOnScreen:Double = 0;
    var previousNumber:Double = 0;
    var performingMath = false
    var operation = 0
    var clickedOperationButton:RoundButton = RoundButton()
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: RoundButton){
        
        if performingMath == true
        {
            switchButtonColor(clickedOperationButton)
            
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            performingMath = false
        }
        else
        {
        label.text = label.text! + String(sender.tag-1)
        numberOnScreen = Double(label.text!)!
        }
    }
    
    @IBAction func buttons(_ sender: RoundButton){
        if (labelNotEmpty() && operationTag(sender)){
            
            previousNumber = Double(label.text!)!
            
            if sender.tag == 12 //Divide
            {
                switchButtonColor(sender)
            }
            else if sender.tag == 13 //Multiply
            {
                switchButtonColor(sender)
            }
            else if sender.tag == 14 //Minus
            {
                switchButtonColor(sender)
            }
            else if sender.tag == 15 //Plus
            {
                switchButtonColor(sender)
            }
            
            operation = sender.tag
            performingMath = true;
        }
        else if sender.tag == 16
        {
            if operation == 12 //Divide
            {
                label.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 13 //Multiply
            {
               label.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 14 //Minus
            {
               label.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 15 //Plus
            {
               label.text = String(previousNumber + numberOnScreen)
            }
        }
        else if sender.tag == 11
        {
            operation = 0
            numberOnScreen = 0
            previousNumber = 0
            label.text = ""
            performingMath = false;
        }
    }
    
    
    func switchButtonColor(_ sender: RoundButton){
        let newTextColor = sender.backgroundColor
        let newBackgroundColor = sender.currentTitleColor
        sender.setTitleColor(newTextColor, for: UIControlState.normal)
        sender.backgroundColor = newBackgroundColor
        clickedOperationButton = sender
    }
    
    func labelNotEmpty() -> Bool{
        var result = false
        if label.text != ""
        {
            result = true
        }
        return result
    }
    
    func operationTag(_ sender: RoundButton) -> Bool{
        var result = false
        if (sender.tag != 11 && sender.tag != 16)
        {
            result = true
        }
        return result
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

