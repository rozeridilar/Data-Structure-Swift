//
//  RoundedButton.swift
//  notification&observers
//
//  Created by Kızılay on 2.04.2019.
//  Copyright © 2019 Turk Kizilay. All rights reserved.
//

import UIKit

@IBDesignable class RoundedButton: UIButton
{
    override func layoutSubviews() {
        super.layoutSubviews()
        
        updateCornerRadius()
    }
    
    @IBInspectable var rounded: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }
    
    func updateCornerRadius() {
        layer.cornerRadius = rounded ? frame.size.height / 2 : 0
    }
}
