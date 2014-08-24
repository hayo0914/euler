#!/usr/bin/ruby

def is_palindromic?(n)
  reverse,palindrome = 0,n
  while palindrome > 0
    reverse *= 10
    reverse += palindrome % 10
    palindrome /= 10
  end
  return n == reverse
end

r = 0
(1..1e3-1).each do |i|
  (1..1e3-1).each do |j|
    n = i*j
    if r < n and is_palindromic?(i*j)
      r = [r, n].max
    end
  end
end
p r
