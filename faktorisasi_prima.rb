def nextPrime(x)
    loop do
        if x % 2 == 0
            x += 1
        else
            x += 2 
        end
        break if isPrime(x)
    end
    return x 
end

def isPrime(x)
    for i in 5...x
        if x % i == 0
            return false
        else
            return true
        end
        i += 2
    end
end

prime = 2
print "Enter a number : "
number = gets.to_i
arr_prime = []
puts "Faktorial of number #{number} :"

while number > 1
    if number % prime == 0
        number /= prime
        arr_prime << prime
    else
        prime = nextPrime(prime)
    end
end

arr_prime.each {
    |x|
    print "#{x} "
}
