class Calculation < ApplicationRecord

  def tribonacci(n)
  return   if n < 1
  a, b, c = 0, 0, 1
  (n - 1).times { a, b, c = b, c, a + b + c }
  a
  end

  def tribonacci n
  if n == 1
    return 1
  elsif n == 2
    return 1
  elsif n == 3
    return 2
  else
    return tribonacci(n - 3) + tribonacci(n - 2) + tribonacci(n - 1)
  end
　end

　def yakusuu

　end

　def fibonacci(input)
  (2...input).inject([1, 1]){ |memo, number|
    memo << (memo[number - 2] + memo[number - 1])
  }
  end

  p fibonacci(10)
  end
