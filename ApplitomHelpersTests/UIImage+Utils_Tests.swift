//
//  ApplitomHelpersTests.swift
//  ApplitomHelpersTests
//
//  Created by Tomer Shalom on 01/08/2019.
//  Copyright © 2019 Applitom. All rights reserved.
//

import XCTest
import ApplitomHelpers

class UIImage_Utils_Tests: XCTestCase {
    
    func test_imageWithAlpha() {
        let imageToTest = UIImage(named: "TestImage", in: Bundle(for: type(of: self)), compatibleWith: nil)
        let imageWithAlpha = imageToTest?.imageWithAlpha(0.5)
        XCTAssert(imageToTest != imageWithAlpha)
    }
    
    func test_addInsets() {
        let imageToTest = UIImage(named: "TestImage", in: Bundle(for: type(of: self)), compatibleWith: nil)
        let imageWithInsets = imageToTest?.addInsets(insets: UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5))
        XCTAssert(imageToTest != imageWithInsets)
    }
    
    func test_resize() {
        let imageToTest = UIImage(named: "TestImage", in: Bundle(for: type(of: self)), compatibleWith: nil)
        let resizedImage = imageToTest?.resize(newSize: CGSize(width: 100, height: 100))
        XCTAssert(imageToTest != resizedImage)
    }
}
