//
//  RomanToInteger.swift
//
//  Created by KHAMARU, Suparna on 16/03/22.
//

import XCTest

class RomanToInteger: XCTestCase {
    
    let dict: [Character: Int] = ["I": 1,
                                  "V": 5,
                                  "X": 10,
                                  "L": 50,
                                  "C": 100,
                                  "D": 500,
                                  "M": 1000]
    
    func romanToInt(_ s: String) -> Int {
        
        var previous=0, output = 0
        
        for i in s {
            
            let currentValue = dict[i] ?? 0
            
            if currentValue <= previous {
                output += previous
            }
            else {
                output += -previous
            }
            previous = currentValue
        }
        output += previous
        
        return output
    }
    
    func testRomanToInteger() {
        print(romanToInt("III"))        // 3
        print(romanToInt("LVIII"))      // 58
        print(romanToInt("MCMXCIV"))    // 1994
        print(romanToInt("MCMX"))       // 1910
    }
}
