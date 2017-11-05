//
//  RoundButton.swift
//  calculator_iOS
//
//  Created by Robert Sobczyk on 05.11.2017.
//  Copyright © 2017 Robert Sobczyk. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
  
}
