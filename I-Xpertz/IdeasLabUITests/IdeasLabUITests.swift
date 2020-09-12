//
//  IdeasLabUITests.swift
//  IdeasLabUITests
//
//  Created by Zacc Konfor on 8/12/20.
//  Copyright © 2020 Zacc Konfor. All rights reserved.
//

import XCTest

class IdeasLabUITests: XCTestCase {

  

    func testExample() throws {
       
        let app = XCUIApplication()
        app.launch()
        ViewControllerScreen.openLogin()
        XCTAssert((ViewControllerScreen.results != nil))

    }

 
}
