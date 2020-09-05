func trailingZeroes(_ n: Int) -> Int {
        
    var countOfFive = 0
    var n = n

    while n >= 5 {
        countOfFive += n/5
        n = n/5
    }

    return countOfFive
}

print(factorialTrailingZero(n: 4))    // 0
print(factorialTrailingZero(n: 10))   // 2
print(factorialTrailingZero(n: 6))    // 1
print(factorialTrailingZero(n: 25))   // 6
print(factorialTrailingZero(n: 30))   // 7


/*

4! = 4 * 3 * 2 * 1        = 24                          --> 0
5! = 5 * 4 * 3 * 2 * 1    = 120                         --> 1    (5*1=5)                                  -> 5 is present 1 time
10! = 10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1  = 3628800 --> 2    (5*1=5, 5*2=10)                          -> 2 times 5 is present 
15!                                                     --> 3    (5*1=5, 5*2=10, 5*3=15)                  -> 3 times 5 is present
25!                                                     --> 6    (5*1=5, 5*2=10, 5*3=15, 5*4=20, 5*5=25)  -> 6 times 5 is present
30!                                                     --> 7                                             -> 7 times 5 is found present

*/
