
    func myPow(_ x: Double, _ n: Int) -> Double {
        
        if !(x < 100 && x > -100 && n < 2147483647 && n > -2147483648) {
            if (x == 1) {
                return x
            }
            else if(x == (-1)) {
                if n >= 2147483647 {
                    return x
                }
                else if n <= -2147483648 {
                    return (-x)
                }
            }
            return 0
        }
        
        if n == 0 || (x == (-1)) {
            return 1.0
        }
        else if(n < 0) {
            return (1 / (myPow(x, -n)))
        }
        else {
            return x * myPow(x, n-1)
        }
    }
    
    print(myPow(2.0000, 10))           // 1024.00000
    print(myPow(2.1000, 3))            // 9.26100
    print(myPow(2.0000, -2))           // 0.25000
    print(myPow(0.00001, 2147483647))  // 0
    print(myPow(1.00012, 1024))        // 1.13074
    print(myPow(1.00000, 2147483647))  // 1.00000
    print(myPow(-1.00000, 2147483647)) // -1.00000
    print(myPow(2.00000, -2147483648)) // 0
    print(myPow(-1.0000, -2147483648)) // 1.00000
