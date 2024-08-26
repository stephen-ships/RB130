=begin
Problem:
  Input: Integer
  Output: String representing Roman Numeral

I stands for 1
V stands for 5
X stands for 10
L stands for 50
C stands for 100
D stands for 500
M stands for 1,000

Requirements
Expect input to be 3000 or less
no need to handle negative numbers

Examples/Test Cases
Class called RomanNumeral
Constructer that saves an Integer as a Roman Numeral
No error handling
Method called to_roman gives decimal representation of Roman numeral


Data Structure:
Integer input
String with a collection to represent the Roman numerals
Collection to hold conversions between numbers and Roman numerals


Algorithm:

initialize string for Roman numeral

iterate over collection of Roman numerals values
  if Roman numeal value < input number add current roman numeral to string 
    add as many as can fit 
    how many can fit is number / roman numeral value 
    get floor of the amount
    save this value to var
  subtract value of roman numerals added



=end

class RomanNumeral
  ROMAN_NUMERALS = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }

  attr_reader :input_int
  def initialize(input)
    @input_int = input
  end

  def to_roman
    output = ''
    number = input_int
    ROMAN_NUMERALS.each do |roman_numeral, rom_val|
      num_of_numerals, remainder = number.divmod(rom_val)
      if num_of_numerals > 0
        output.concat(roman_numeral * num_of_numerals)
      end
      number = remainder
    end
    output

  end

end

