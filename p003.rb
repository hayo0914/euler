#!/usr/bin/ruby

def factorize(n)
  factors = {}
  factors.default = 0
  f = 2
  sqi = 4
  while n >= sqi
      while n % f == 0
          n /= f
          factors[f] += 1
      end
      sqi += 2 * f + 1
      f = f + 1
  end
  if n != 1
    factors[n] += 1
  end
  return factors
end

puts factorize(600_851_475_143).keys
