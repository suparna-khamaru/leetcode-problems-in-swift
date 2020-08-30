 func reverse(_ y: Int) -> Int {
        
        var x = y
        var reversed: Int = 0
        
        while (x != 0) {
            reversed = (reversed * 10) + (x % 10)
            x /= 10
        }
        
        if !(reversed < 2147483647 && reversed > -2147483648) {
            return 0
        }
        return reversed
    }

    func testReverse() {
        print(reverse(123))           // 321
        print(reverse(-123))          // -321
        print(reverse(120))           // 21
        print(reverse(1534236469))    // 0
    }
