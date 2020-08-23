 func lengthOfLongestSubstring(_ s: String) -> Int {
        
        var newArray = [Character: Int]()
        let characters = Array(s)
        var left=0, right = 0
        var maxLength = 0
        
        while right < characters.count {
            let char = characters[right]
            if (newArray[char] != nil) {
                left = max(newArray[char]! + 1, left)
            }
            newArray[char] = right
            maxLength = max(maxLength, right-left+1)
            right+=1
        }
       return maxLength
}

print(lengthOfLongestSubstring("abcabcbb"))   //3     -> abc
print(lengthOfLongestSubstring("bbbbb"))      //1     -> b
print(lengthOfLongestSubstring("pwwkew"))     //3     -> wke
