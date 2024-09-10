=begin
Problem:
  Input: integers
  Output: integer

  Rules: Sum of multipels of 1 should be 0
  no 


Examples/ Test Cases
class SumofMultiples
  constructor method
  takes list of integers to check if multipes
  if none provide default to 3 and 5


instance method to
takes integer argument
find multipeles of number up but not including the number and sums them together

class/static method name to 
  does same thing
  always defaults to multiples of 3 and 5

Data structure:
integers 
collection of multiples to check against
possible collection of found values


Algorithm:
intialize empty array for multiples
range from eitther 1 or 2 upto but not including number
iterate over range
  check if its a multiple of the number set
  add to multiples array

return sum of multiples

helper method 
takes int as argument
check if any number is a mutiple of input number
return true if found

class method
  take argument limiting value
  creat new object to use to method
  call method with argument
  return result

=end

class SumOfMultiples
  attr_reader :set  

  def initialize(*set)
    set = [3,5] if set.size < 1
    @set = set
  end

  def to(num)
    (1...num).select do |i|
      is_multiple?(i)
    end.sum
  end
    
  def is_multiple?(num)
    set.any? {|i| num % i == 0 }
  end

  def self.to(num)
    SumOfMultiples.new.to(num)
  end

end
