//Approach 1 : Brute Force 

func threeSum(_ nums: [Int]) -> [[Int]] {
        
    guard nums.count >= 3 else { return [[Int]]() }
    let nums1 = nums.sorted()

    var dict = [[Int]]()

    for i in 0...nums1.count-3 {
        for j in 1...nums1.count-2 {
            for k in 2...nums1.count-1 {
                if ((nums1[i] + nums1[j] + nums1[k] == 0))
                    && (i < j)
                    && (j < k) 
                    && !(dict.contains([nums1[i], nums1[j], nums1[k]]))
                    {
                       dict.append([nums1[i], nums1[j], nums1[k]])
                    }
            }
        }
    }
    return dict
}

print(threeSum([-1,0,1,2,-1,-4]))        //[[-1, -1, 2], [-1, 0, 1]]
print(threeSum([0,-1,2,-3,1]))   //[[-3, 1, 2], [-1, 0, 1]]
print(threeSum([1,-2,1,0,5]))    // [[-2, 1, 1]]
print(threeSum([1,-2]))          // []
print(threeSum([-6,14,-11,7,-5,-8,12,-13,-3,-14,7,0,-7,-15,-5,-9,-13,-7,-5,9,8,-13,-6,-8,-12,7,-10,11,8,-14,12,9,-15,-14,1,-5,-7,-10,-10,5,-9,12,12,-1,12,14,-2,-15,-8,0,9,7,2,10,14,-3,2,11,-6,-13,12,13,11,5,14,-11,7,14,-6,12,-4,-7,9,-7,-1,-1,-8,4,-9,-9,-11,-15,5,6,10,4,11,-10,-8,12,-8,-10,10,11,2,9,-15,-14,0,-13,14,11,-5,0,-11,1,6,-12]))
