//
//  ViewControllerScreen.swift
//  IdeasLabUITests
//
//  Created by Zacc Konfor on 8/12/20.
//  Copyright © 2020 Zacc Konfor. All rights reserved.
//

import Foundation
import XCTest

class ViewControllerScreen {
    
    
    
    struct Buttons {
        let signUpButton: XCUIElement
        let loginButton: XCUIElement
    }
    
    static let buttons = Buttons(
        
        signUpButton: XCUIApplication().buttons["SIGN UP"],
        loginButton: XCUIApplication().buttons["LOGIN"]
    
    )
    
    static func openLogin() {
        ViewControllerScreen.buttons.loginButton.tap()
    }
    
    static let results: AnyClass? = XCUIApplication().superclass
}
