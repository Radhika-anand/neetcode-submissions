class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var left = 0
        var right = s.count-1
        let char = Array(s)

        while left < right {
            while left < right && !isAlphaNumeric(char[left]) {
                left += 1
            }
            while left < right && !isAlphaNumeric(char[right]) {
                right -= 1
            }
            if char[left].lowercased() != char[right].lowercased() {
                return false
            }
            left += 1
            right -= 1
            
        }
        return true
    }
        
    private func isAlphaNumeric(_ c: Character) -> Bool {
        return c.isLetter || c.isNumber
    }
}
