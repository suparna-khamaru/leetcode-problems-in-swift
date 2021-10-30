/*Problem: Given nums = [2, 7, 11, 15], target = 9
Solution: if nums[0] + nums[1] = 2 + 7 = 9, return [0, 1] */


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

func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
        
        var hashTable = [Int:Int]()
        
        for (key, value) in nums.enumerated() {
            let subtracted = target - value
            if let match = hashTable[subtracted] {
                return [match, key]
            }
            else {
                hashTable[value] = key
            }
        }
        return [-1, -1]
    }
}

print(twoSum2([2,7,11,15], 9))  // 0,1
print(twoSum2([3,2,4], 6))      // 1,2
print(twoSum2([3,2,3], 6))      // 0,2


// Approach 3 

func twoSum3(nums: [Int], target: Int) -> (Int, Int)? {
        
     guard nums.count > 1 else { return nil }
     var diffs = Dictionary<Int,Int>()

     for i in nums.indices {

         let left = nums[i]                  
         let right = target - left           

         if let foundIndex = diffs[right] {
             return (i, foundIndex)
         }
         else{
             diffs[left] = i
         }
     }
     return nil
 }
   
print(twoSum2(nums: [1], target: 1))                   // nil
print(twoSum2(nums: [2,7,11,15], target: 13))          // (2,0)
print(twoSum2(nums: [3,2,4], target: 6))               // (2,1)
print(twoSum2(nums: [3,2,3], target: 6))               // (2,0)
print(twoSum2(nums: [3,2,5,6,8,9,1,4], target: 10))    // (4,1)
