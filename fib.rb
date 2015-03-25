memo = Hash.new
m = 0
j = 0
def fib(n, memo)
    if n <= 1
        memo[n] = n
    else
        memo[n] = fib(n-1, memo) + fib(n-2, memo)
    end

    return memo[n]
end


# calculate big fibs
while m < 34 do
    fib(m, memo)
    if memo[m] % 2 == 0
        j += memo[m]
    end
    
    m += 1
end

memo.each do |k, v|
    puts "#{k}:#{v}"
end

puts j
