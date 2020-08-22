// 2 pointer approach

func trap(_ height: [Int]) -> Int {

    var i = 0
    var j = height.count - 1
    var maxItem = 0

    var i_max = 0
    var j_max = 0

    while (i < j) {
        if (height[i] < height[j]) {
            (height[i] >= i_max) ? (i_max = height[i]) : (maxItem += (i_max - height[i]))
            i+=1
        }
        else {
            (height[j] >= j_max) ? (j_max = height[j]) : (maxItem += (j_max - height[j]))
            j-=1
        }
    }
    return maxItem;
}

print(trap([0,1,0,2,1,0,1,3,2,1,2,1]))      // 6
print(trap([1,3,4]))                        // 0
print(trap([2,1,3,4,6,5]))                  // 1
print(trap([1,8,6,2,5,4,8,3,7]))            // 19
