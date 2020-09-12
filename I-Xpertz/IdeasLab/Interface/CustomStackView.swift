//
//  CustomStackView.swift
//  IdeasLab
//
//  Created by Zacc Konfor on 8/13/20.
//  Copyright © 2020 Zacc Konfor. All rights reserved.
//

import UIKit



class CustomStackView: UIStackView {

   override init(frame: CGRect) {
   super.init(frame: frame)
       setupStack()
   }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupStack() {
        autoresizesSubviews = true
        translatesAutoresizingMaskIntoConstraints = false
        axis = .vertical
        distribution = .equalSpacing
        alignment = .center
        spacing = 3.0
        
    }

}
