//
//  StringWork.swift
//  learnSwift
//
//  Created by macpps on 14-6-26.
//  Copyright (c) 2014 paopaosa. All rights reserved.
//

import UIKit

class StringWork: NSObject {
    func containsString(completString: String, compareString : String) -> Bool {
        if completString.bridgeToObjectiveC().containsString(compareString) {
            return true
        }
        return false
    }
    
    func containsLowercaseString(fullSting: String, searchString: String) -> Bool {
        if fullSting.lowercaseString.rangeOfString(searchString.lowercaseString) {
            return true
        }
        else
        {
            return false
        }
    }
    
    func swapTwoValues<T>(inout value1: T, inout value2: T) {
        let temp = value1
        value1 = value2
        value2 = temp
    }
}
