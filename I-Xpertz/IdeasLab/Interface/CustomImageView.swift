//
//  CustomImageView.swift
//  IdeasLab
//
//  Created by Zacc Konfor on 9/9/20.
//  Copyright © 2020 Zacc Konfor. All rights reserved.
//

import UIKit

class CustomImageView: UIImageView {

    
    override init(frame: CGRect) {
    super.init(frame: frame)
        setImageView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
  private func setImageView() {
    
    let width: CGFloat = 20
    let height: CGFloat = 20
    
    frame.size.width = width
    frame.size.height = height
    layer.cornerRadius = 2
    translatesAutoresizingMaskIntoConstraints = false
    }
    
   

}
