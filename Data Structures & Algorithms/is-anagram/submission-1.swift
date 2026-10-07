class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        var frequency :[Character : Int] = [:]

        for char in s {
            frequency[char, default:0] += 1
        }

        for char in t {
            frequency[char, default:0] -= 1
        }
        
        for count in frequency.values{
            if count != 0 {
                return false
            }
        }
        return true
    }
}
