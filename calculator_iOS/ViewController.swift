//
//  ViewController.swift
//  calculator_iOS
//
//  Created by Robert Sobczyk on 05.11.2017.
//  Copyright © 2017 Robert Sobczyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberOnScreen:Double = 0;
    
    @IBOutlet weak var label: UILabel!
    @IBAction func numbers(_ sender: RoundButton)
    {
        label.text = label.text! + String(sender.tag-1)
        numberOnScreen = Double(label.text!)!
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

