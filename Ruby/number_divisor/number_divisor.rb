def divide(dividend, divisor)
  negative = true if dividend < 0 || divisor < 0
  negative = false if dividend > 0 && divisor > 0
  negative = false if dividend < 0 && divisor < 0
  dividend = dividend.abs
  divisor = divisor.abs
  answer = 0
  num = 0
  while num <= dividend
      if dividend - num > divisor
          num += divisor
          answer += 1
      else
          if (dividend - num) / divisor > 0.49
              answer += (dividend - num) / divisor
              num += (dividend - num) / divisor
          else 
              break
          end
      end
  end
  if negative
      return answer * -1
  else
      return answer
  end
end