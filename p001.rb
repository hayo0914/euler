a = 0
(0..1e3 - 1).each do |n| a += (n % 5 == 0 || n % 3 == 0) ? n : 0 end
puts a
