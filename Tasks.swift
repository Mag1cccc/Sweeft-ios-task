import Foundation

func minSplit(amount: Int) -> Int {
  let coins = [50, 20, 10, 5, 1]
  var remaining = amount
  var count = 0

  for coin in coins {
    count += remaining / coin
    remaining %= coin
  }

  return count

}

print(minSplit(amount: 9))
print(minSplit(amount: 26))
print(minSplit(amount: 172))

func sumOfDigits(start: Int, end: Int) -> Int {
  var total = 0
  for number in start...end {
    var n = number
    while n > 0 {
      total += n % 10
      n /= 10
    }
  }
  return total
}

print(sumOfDigits(start: 7, end: 8))
print(sumOfDigits(start: 17, end: 20))
print(sumOfDigits(start: 10, end: 12))

func isProperly(sequence: String) -> Bool {
  var count = 0
  for char in sequence {
    if char == "(" {
      count += 1
    } else if char == ")" {
      count -= 1
      if count < 0 {
        return false
      }
    }
  }
  return count == 0
}

print(isProperly(sequence: "(()())"))
print(isProperly(sequence: ")(()"))
print(isProperly(sequence: "(()())("))

func countWays(n: Int, steps: [Int]) -> Int {
  if n == 0 {
    return 1
  }
  var dp = Array(repeating: 0, count: n + 2)
  dp[0] = 1
  for i in 0...n {
    if dp[i] == 0 {
      continue
    }
    let j1 = i + 1
    if j1 <= n + 1 && (j1 > n || steps[j1 - 1] == 1) {
      dp[j1] += dp[i]
    }
    let j2 = i + 2
    if j2 <= n + 1 && (j2 > n || steps[j2 - 1] == 1) {
      dp[j2] += dp[i]
    }
  }
  return dp[n + 1]
}


print(countWays(n: 3, steps: [0, 1, 0]))
print(countWays(n: 4, steps: [0, 1, 1, 0]))
print(countWays(n: 5, steps: [1, 1, 0, 1, 1]))


func zeros(N: Int) -> Int {
  var count = 0
  var i = 5
  while i <= N {
    count += N / i
    i *= 5
  }
  return count
}

print(zeros(N: 7))
print(zeros(N: 12))
print(zeros(N: 490))


