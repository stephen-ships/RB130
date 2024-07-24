=begin
Write a method that returns a list of all of the divisors
of the positive integer passed in as an argument. 
The return value can be in any sequence you wish.

Problem:
  Input: positive integer
  Output: array of in

  Rules:
  return can be in any sequence

Examples:
divisors(1) == [1]
divisors(7) == [1, 7]
divisors(12) == [1, 2, 3, 4, 6, 12]
divisors(98) == [1, 2, 7, 14, 49, 98]
divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute

Data Structure:
Integer
array of divisors

Alorithm:
Start at 1 iterate over all integers from 1 to half of input
check if number is evenly divisible by input



=end

# def divisors(n)

#   output = [1]
#   return output if n == 1
#   2.upto(n/2) do |i|
#       output << i if n % i == 0 
#   end
#   output << n
# end



def divisors(n)
  return [n] if n == 1
  1.upto(n/2).select do |divisor|
    n % divisor == 0
  end << n
end


p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute