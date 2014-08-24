#!/usr/bin/ruby

sum,a,b = 0,0,1
while sum < 4e6
    sum += b if b.even?
    a,b = b,a+b
end
puts sum
