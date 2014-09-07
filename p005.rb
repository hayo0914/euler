#!/usr/bin/ruby

i=3*7*11*13*17*19
m=0
resolution = -1
while true
  m = m + 1
  p = i*m
  is_resolved = true
  (1..20).each do |n|
    if p % n != 0
      is_resolved = false
      break
    end
  end
  if is_resolved
    resolution = p
    break
  end
end
puts resolution
