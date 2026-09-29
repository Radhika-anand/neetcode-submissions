class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        var frequency = [Character:Int]()

        for character in s {
            frequency[character, default: 0] += 1
        }

        for character in t {
            frequency[character, default: 0] -= 1
        }

        for count in frequency.values {
            if count != 0 {
                return false
            }
        }
        return true
    }
}
