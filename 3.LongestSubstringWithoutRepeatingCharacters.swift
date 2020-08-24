 func lengthOfLongestSubstring(_ s: String) -> Int {
        
    var maxLength = 0, left = 0, right = 0
    let char = Array(s)
    var hashmap = [Character: Int]()

    while (right < char.count && left < char.count) {
     
        let character = char[right]
        if (hashmap[character] != nil) {
            left = max(hashmap[character]!+1 , left)
        }
        hashmap[character] = right
        maxLength = max(maxLength, right-left+1)
        right+=1
    }
    return maxLength
}

print(lengthOfLongestSubstring("abcabcbb"))   //3     -> abc
print(lengthOfLongestSubstring("bbbbb"))      //1     -> b
print(lengthOfLongestSubstring("pwwkew"))     //3     -> wke
print(demo(s: "abcdefabcddabcdefghi"))        //9     -> abcdefghi
