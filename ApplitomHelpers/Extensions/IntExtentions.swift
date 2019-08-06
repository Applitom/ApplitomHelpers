//
//  IntExtentions.swift
//  ManySteps
//
//  Created by Tomer Shalom on 18/07/2018.
//  Copyright © 2018 Applitom. All rights reserved.
//
import Foundation

public extension Int {
    func withCommas() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = NumberFormatter.Style.decimal
        return numberFormatter.string(from: NSNumber(value:self))!
    }
}
