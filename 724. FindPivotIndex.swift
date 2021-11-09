//
//  FindPivotIndex.swift
//  https://leetcode.com/problems/find-pivot-index/
//
//  Created by Suparna Khamaru on 09/11/21.
//

import XCTest

class FindPivotIndex: XCTestCase {

    func testFindIndex() throws {
        
        print(pivotIndex([-1,-1,0,0,-1,-1]))        // 2
        print(pivotIndex([1,7,3,6,5,6]))            // 3
    }
    
    func pivotIndex(_ nums: [Int]) -> Int {
        
        var leftSum = 0
        var rightSum = nums.reduce(0, +)
        var result: Int = -1
        
        for value in nums.indices {
            
            rightSum -= nums[value]
            
            if leftSum == rightSum {
                result = value
                break
            }
            
            leftSum += nums[value]
        }
        
        return result
    }
}
