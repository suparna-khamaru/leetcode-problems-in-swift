// Problem URL: https://leetcode.com/problems/divide-two-integers/

class Solution {
    func divide(_ dividend: Int, _ divisor: Int) -> Int {
        
        let pPower = Int(pow(2.0, 31.0))
        let nPower = Int(pow(-2.0, 31.0))
        let quotient = dividend/divisor
        
        if quotient > pPower - 1 {
            return pPower - 1
        }
        
        if quotient < nPower {
            return nPower
        }
           
        if nPower <= dividend && dividend <= pPower-1 && nPower <= divisor && divisor <= pPower-1 {
            return quotient
        }
        return 0
    }
}
