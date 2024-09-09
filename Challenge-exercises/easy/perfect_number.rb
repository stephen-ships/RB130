=begin
https://launchschool.com/exercises/48ffdb7b
Problem:
  Input: integer
  Output: string

Aliquot sum - number evenly divided into dividend with no remainder
  excluding itself


Class PerfectNumber Test


class method 
  takes 1 integer argumetn
  raises exception Standard error if input less than 1

returns 'abundant' if  aliquot sum == number
returns 'perfect' if aliquot sum > number
returns 'deficient' if aliquot sum < number


Examples / Test Cases

6 is a perfect number since its divisors are 1, 2, and 3, and 1 + 2 + 3 = 6.
28 is a perfect number since its divisors are 1, 2, 4, 7, and 14 and 1 + 2 + 4 + 7 + 14 = 28.
15 is a deficient number since its divisors are 1, 3, and 5 and 1 + 3 + 5 = 9 which is less than 15.
24 is an abundant number since its divisors are 1, 2, 3, 4, 6, 8, and 12 and 1 + 2 + 3 + 4 + 6 + 8 + 12 = 36 which is greater than 24.


Data Structures
Integer 
String
collection of a Range of numbers to find the divisors
collection of divisors that we can sum

Algorithm
Find the all the factors of the number excluding itself
throw error if less than 0
find sums 
return correct string based on conditions from sum

helper method
initialize sum to 0
iterate over range of numbers from 1 but not including itself
check if the modulos of dividing the number by the current elemetn in the range == 0
  append to collection of divisors
return sum of the divisors

=end

class PerfectNumber

  def self.classify(num)
    raise StandardError if num < 1

    sum = PerfectNumber.new.calc_sum(num)

    case
    when sum == num then 'perfect'
    when sum > num then 'abundant'
    when sum < num then 'deficient'
    end

  end

  def calc_sum(num)
    sum = 0
    (1...num).each do |divisor|
      sum += divisor if num % divisor == 0
    end
    sum
  end

end
