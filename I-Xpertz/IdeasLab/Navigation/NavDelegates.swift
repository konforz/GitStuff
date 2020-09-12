//
//  Buttons.swift
//  IdeasLab
//
//  Created by Zacc Konfor on 7/23/20.
//  Copyright © 2020 Zacc Konfor. All rights reserved.
//

import Foundation
import UIKit


protocol ViewCtrlDelegate: AnyObject {
    func didTapLogin()
    func didTapSignUp()
}

protocol  LoginViewDelegate: AnyObject {
     func didTapSignIn()
}

protocol SignUpViewDelegate: AnyObject {
   func didTapDone()
}

protocol HomeViewDelegate: AnyObject {
    
}









