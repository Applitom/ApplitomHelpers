//
//  IntExtentionsTests.swift
//  ApplitomHelpersTests
//
//  Created by Tomer Shalom on 06/08/2019.
//  Copyright © 2019 Applitom. All rights reserved.
//

import XCTest
import ApplitomHelpers

class IntExtentionsTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_int_withCommas_1() {
        let number: Int = 1
        let numberWithCommas = number.withCommas()
        XCTAssertEqual(numberWithCommas, "1")
    }
    
    func test_int_withCommas_10() {
        let number: Int = 10
        let numberWithCommas = number.withCommas()
        XCTAssertEqual(numberWithCommas, "10")
    }
    
    func test_int_withCommas_100() {
        let number: Int = 100
        let numberWithCommas = number.withCommas()
        XCTAssertEqual(numberWithCommas, "100")
    }
    
    func test_int_withCommas_1000() {
        let number: Int = 1000
        let numberWithCommas = number.withCommas()
        XCTAssertEqual(numberWithCommas, "1,000")
    }

    func test_int_withCommas_10000() {
        let number: Int = 10000
        let numberWithCommas = number.withCommas()
        XCTAssertEqual(numberWithCommas, "10,000")
    }
    
    func test_int_withCommas_100000() {
        let number: Int = 100000
        let numberWithCommas = number.withCommas()
        XCTAssertEqual(numberWithCommas, "100,000")
    }
    
    func test_int_withCommas_1000000() {
        let number: Int = 1000000
        let numberWithCommas = number.withCommas()
        XCTAssertEqual(numberWithCommas, "1,000,000")
    }
    
    func test_int_withCommas_10000000() {
        let number: Int = 10000000
        let numberWithCommas = number.withCommas()
        XCTAssertEqual(numberWithCommas, "10,000,000")
    }
    
    func test_int_withCommas_100000000() {
        let number: Int = 100000000
        let numberWithCommas = number.withCommas()
        XCTAssertEqual(numberWithCommas, "100,000,000")
    }
    
    func test_int_withCommas_1000000000() {
        let number: Int = 1000000000
        let numberWithCommas = number.withCommas()
        XCTAssertEqual(numberWithCommas, "1,000,000,000")
    }
}
