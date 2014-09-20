#!/usr/bin/ruby

def check_is_prime(n)
  if n == 2
    return true
  elsif n == 3
    return true
  elsif n % 2 == 0
    return false
  end
  devide = 1
  to = Math.sqrt(n)
  while devide <= to  do
    devide += 2
    if n % devide == 0 then
      return false
    end
  end
  return true
end

found_count = 0
number = 1
while found_count <= 100 do
  number += 1
  if check_is_prime(number)
    p number
    found_count += 1
  end
end
p number

