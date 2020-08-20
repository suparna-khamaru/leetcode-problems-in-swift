//Approach 1: Brute Force

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

   for i in nums.indices {
       for j in nums.indices {
           if i != j && (nums[i] + nums[j] == target) {
                return [i,j]
           }
       }
    }
    return [-1, -1]
}

print(twoSum([2,7,11,15], 9)) // 0,1
print(twoSum([3,2,4], 6))     // 1,2
print(twoSum([3,2,3], 6))     // 0,2



//Approach 2: One-pass hash table

