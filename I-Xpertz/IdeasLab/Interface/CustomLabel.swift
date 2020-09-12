//
//  CustomLabel.swift
//  IdeasLab
//
//  Created by Zacc Konfor on 8/3/20.
//  Copyright © 2020 Zacc Konfor. All rights reserved.
//

import UIKit

class CustomLabel: UILabel {

override init(frame: CGRect) {
    super.init(frame: frame)
        setupLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
   private func setupLabel() {
        setShadow()
    
    textColor = UIColor.init(red: 50, green: 50, blue: 200, alpha: 1)
    tintColor = .yellow
    font = UIFont.init(name: "AvenirNext-DemiBold", size: 45)
    layer.cornerRadius = 25
    layer.borderWidth  = 3.0
    layer.borderColor  = UIColor.systemTeal.cgColor
    translatesAutoresizingMaskIntoConstraints = false
    }
    
   private func setShadow() {
        layer.shadowColor   = UIColor.black.cgColor
        layer.shadowOffset  = CGSize(width: 0.0, height: 6.0)
        layer.shadowRadius  = 8
        layer.shadowOpacity = 0.5
        clipsToBounds       = true
        layer.masksToBounds = false
    }

}
