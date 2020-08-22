// 2 pointer approah 

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        
        var maxarea = 0, i = 0
        var j = height.count - 1
        
        while (i < j) {
            maxarea = max(maxarea, min(height[i], height[j]) * (j - i))
            if (height[i] < height[j]) {
                i+=1
            }
            else {
                j-=1
            }
        }
        return maxarea
    }
}

print(maxArea(height: [1,3,4]))               // 1
print(maxArea(height: [2,1,3,4,6,5]))         // 8
print(maxArea(height: [1,8,6,2,5,4,8,3,7]))   // 49


/////////////////////////////////////////
OR
/////////////////////////////////////////

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        
        var maxWater = 0
        var i = 0
        var j = height.count-1
        
        while (i < j) {
            
            if (height[i] < height[j]) {
                maxWater = max(maxWater, height[i] * (j-i))
                i+=1
            }
            else {
                maxWater = max(maxWater, height[j] * (j-i))
                j-=1
            }
        }
        return maxWater
    }
}
