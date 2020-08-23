// 2 pointer approach

func trap(_ height: [Int]) -> Int {

    var i = 0
    var j = height.count - 1
    var total = 0

    var i_max = 0
    var j_max = 0

    while (i < j) {
        if (height[i] < height[j]) {
            (height[i] >= i_max) ? (i_max = height[i]) : (total += (i_max - height[i]))
            i+=1
        }
        else {
            (height[j] >= j_max) ? (j_max = height[j]) : (total += (j_max - height[j]))
            j-=1
        }
    }
    return total;
}

print(trap([0,1,0,2,1,0,1,3,2,1,2,1]))      // 6
print(trap([1,3,4]))                        // 0
print(trap([2,1,3,4,6,5]))                  // 1
print(trap([1,8,6,2,5,4,8,3,7]))            // 19


////////
//Same above problem on simplication is written below
////////

func trap(_ height: [Int]) -> Int {
           
    var left = 0, right = height.count-1
    var left_max = 0, right_max = 0
    var ans = 0

    while (left < right) {
        if(height[left] < height[right]) {
            if(height[left] >= left_max) {
                left_max = height[left]
            }
            else {
               ans += left_max - height[left]
            }
            left+=1
        }
        else{
            if(height[right] >= right_max) {
                right_max = height[right]
            }
            else {
               ans += right_max - height[right]
            }
            right-=1
        }
    }
    return ans
 }

/*
Debug print output for each while loop run:

For trap([1,8,6,2,5,4,8,3,7]))   

10 |
 9 |
 8 |    |````|                   |````|
 7 |    |    |                   |    |    |````|
 6 |    |    |````|              |    |    |    |
 5 |    |    |    |    |````|    |    |    |    |
 4 |    |    |    |    |    |````|    |    |    |
 3 |    |    |    |    |    |    |    |````|    |
 2 |    |    |    |````|    |    |    |    |    |
 1 |````|    |    |    |    |    |    |    |    |
-------------------------------------------------
 0 | 1  | 8  | 6  |  2 |  5 | 4  |  8 | 3  | 7    


    height[left]: 1, height[right]: 7
    left_max: 1

    height[left]: 8, height[right]: 7
    right_max: 7

    height[left]: 8, height[right]: 3
    ans: 4

    height[left]: 8, height[right]: 8
    right_max: 8

    height[left]: 8, height[right]: 4
    ans: 8

    height[left]: 8, height[right]: 5
    ans: 11

    height[left]: 8, height[right]: 2
    ans: 17

    height[left]: 8, height[right]: 6
    ans: 19

    19

*/
