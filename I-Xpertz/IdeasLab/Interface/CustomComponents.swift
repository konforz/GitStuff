//
//  InterfaceComponents.swift
//  IdeasLab
//
//  Created by Zacc Konfor on 9/9/20.
//  Copyright © 2020 Zacc Konfor. All rights reserved.
//

import UIKit

struct Components {
    
   static let standardBlue: UIColor = UIColor(red: 55/255, green: 128/255, blue: 250/255, alpha: 1)
    
   static var badgeValue: String?
    
   enum ErrorHandler: Error {
        case InvalidRequest, ValidationFailed
    }
    
    static func addBadge() {
    }
}

struct CustomData {
    var title: String, url: String, backgroundImage: UIImage
   
}
