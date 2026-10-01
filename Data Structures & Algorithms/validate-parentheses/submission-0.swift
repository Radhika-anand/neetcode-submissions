class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        let openToClose : [Character:Character] = [")" : "(", "]" : "[", "}" : "{"]

        for c in s {
            if let open = openToClose[c] {
                 if !stack.isEmpty && stack.last! == open {
                    stack.popLast()
                 } else {
                    return false
                 }
            } else {
                stack.append(c)
            }
        }
        return stack.isEmpty
    }
}
