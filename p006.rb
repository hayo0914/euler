#!/usr/bin/ruby

limit = 100
sum = (1..limit).reduce() {|sum, n|
  sum += n**2
}
p (sum - ((limit*(limit+1))/2)**2).abs
