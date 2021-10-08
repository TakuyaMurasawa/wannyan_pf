class Calculation < ApplicationRecord
  
  def tribonacci(n)
  return   if n < 1
  a, b, c = 0, 0, 1
  (n - 1).times { a, b, c = b, c, a + b + c }
  a
  end

　def yakusuu
　  
　end
end
