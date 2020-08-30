func isPalindrome(_ x: Int) -> Bool {
        
        var given = x
        var reversed: Int = 0
        
        if(x < 0 || (x % 10 == 0 && x != 0)) {
            return false
        }
        
        while (given != 0) {
            reversed = (reversed * 10) + (given % 10)
            given /= 10
        }
        
        if (reversed == x) {
            return true
        }
        else {
            return false
        }
}

func test1() {
        print(isPalindrome(121))      // true
        print(isPalindrome(-121))     // false
        print(isPalindrome(10))       // false
}
