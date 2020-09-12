//
//  CustomCollectionViewCell.swift
//  IdeasLab
//
//  Created by Zacc Konfor on 9/9/20.
//  Copyright © 2020 Zacc Konfor. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
   
    var theImage = CustomImageView(frame: CGRect.zero)
    var topLabel = CustomLabel()
    var bottomLabel = CustomLabel()
    var data: CustomData? {
        didSet {
            guard let data = data else {return}
            theImage.image = data.backgroundImage
            
            topLabel.text = data.title
            topLabel.textColor = .black
            topLabel.font = UIFont.init(name: "AvenirNext", size: 7)
            topLabel.layer.borderColor = UIColor.clear.cgColor
            
            bottomLabel.text = data.url
            bottomLabel.textColor = .black
            bottomLabel.font = UIFont.init(name: "AvenirNext-DemiBold", size: 10)
            bottomLabel.layer.borderColor = UIColor.clear.cgColor
         
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupCell () {
        setShadow()
        contentView.addSubview(topLabel)
        contentView.addSubview(bottomLabel)
        contentView.addSubview(theImage)
        let margins = self.contentView.layoutMarginsGuide
        
        NSLayoutConstraint.activate([
        theImage.centerXAnchor.constraint(equalTo: margins.centerXAnchor),
        theImage.topAnchor.constraint(equalTo: margins.topAnchor),
        theImage.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: -40),
        theImage.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
        theImage.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
        
        topLabel.centerXAnchor.constraint(equalTo: margins.centerXAnchor),
        topLabel.topAnchor.constraint(equalTo: theImage.bottomAnchor),
        
        bottomLabel.centerXAnchor.constraint(equalTo: margins.centerXAnchor),
        bottomLabel.bottomAnchor.constraint(equalTo: margins.bottomAnchor),
        bottomLabel.topAnchor.constraint(equalTo: topLabel.bottomAnchor)
        ])
    }
    
    private func setShadow() {
           layer.cornerRadius  = 10
           layer.shadowColor   = UIColor.white.cgColor
           layer.shadowOffset  = CGSize(width: 0.0, height: 6.0)
           layer.shadowRadius  = 10
           layer.shadowOpacity = 0.5
           clipsToBounds       = true
           layer.masksToBounds = false
       }
    
    
}
