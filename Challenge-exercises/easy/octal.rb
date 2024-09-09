=begin
https://launchschool.com/exercises/fb0821cc


Problem:
  Octal to decimal conversion
  Input: Octal string
  Output: integer converted number

  Rules: Dont use library methods
  treat invalid input as octal 0

class Octal
constructor method
  takes octal string as input
  saves to instance variable

to_decimal instance method
  returns 0 if invalid octal input
  perform the conversion value on the decimal

Examples / Test Cases:


Data Strudctures:
start with string
collection of of string characters
Integer representation of the stirng char



Algorithm:

to_decimal
  returns 0 if invalid octal input
    only valid input 0, 1, 2, 3, 4, 5, 6, and 7
  initialize sum value
  break string into each digit 
  reverse the collection
  iterate over the digits in the string
  The n*th* digit gets multiplied by 8^n-1
  perform the conversion value on the di
  sum all values together

=end

class Octal
  
  def initialize(octal_string)
    @octal = octal_string
  end


  def to_decimal
    # check if octal string is valid
    return 0 if octal.match(/[^01234567]/)
    number = 0
    octal.to_i.digits.each_with_index do |digit, idx|
      number += digit * 8**idx 
    end
    number
  end

  private
  attr_reader :octal
end