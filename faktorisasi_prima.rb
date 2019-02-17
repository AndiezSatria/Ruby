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
print "Masukkan angka : "
angka = gets.to_i
arr_prime = []
puts "faktorisasi prima dari #{angka} :"

while angka > 1
    if angka % prime == 0
        angka /= prime
        arr_prime << prime
    else
        prime = nextPrime(prime)
    end
end

arr_prime.each {
    |x|
    print "#{x} "
}
