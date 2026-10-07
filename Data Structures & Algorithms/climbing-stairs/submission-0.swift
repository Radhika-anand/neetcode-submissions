class Solution {
    func climbStairs(_ n: Int) -> Int {
        var cache = Array(repeating: -1, count: n)

        func dfs(_ i: Int) -> Int {
            if i >= n {
                return i == n ? 1 : 0
            }
            if cache[i] != -1 {
                return cache[i]
            }
            cache[i] = dfs(i+1) + dfs(i+2)
            return cache[i]
        }
        return dfs(0)
    }
}
