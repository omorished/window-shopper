//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by Os! on 24/05/2019.
//  Copyright © 2019 Os!. All rights reserved.
//

import XCTest

class window_shopperTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        //uint testing
        XCTAssert(Wage.claculateHours(forWage: 25.0, withPrice: 100.0) == 4)
        XCTAssert(Wage.claculateHours(forWage: 24.1, withPrice: 99.01) == 5)
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
