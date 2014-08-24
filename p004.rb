#!/usr/bin/ruby

def is_palindromic?(n)
  return n == n.to_s.reverse!.to_i
end

r = 0
(1..1e3-1).each do |i|
  (1..1e3-1).each do |j|
    n = i*j
    if r < n && is_palindromic?(i*j)
      r = [r, n].max
    end
  end
end
p r
