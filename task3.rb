numbers_fib = []
i = 1 
j = 1 
while (i + j) <= 100 
  numbers_fib.push(i + j)
  i, j = i + j, i 
end
puts numbers_fib
