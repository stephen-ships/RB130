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
    'M' => 1000,
    'D' => 500,
    'C' => 100,
    'L' => 50,
    'X' => 10,
    'V' => 5,
    'I' => 1} 

  attr_accessor :input_int
  def initialize(input)
    @input_int = input
  end

  def to_roman
    output = ''

    ROMAN_NUMERALS.each do |roman_numeral, rom_val|
      if rom_val <= input_int
        num_of_numerals = input_int / rom_val
        output.concat(roman_numeral * num_of_numerals)
        self.input_int -= (num_of_numerals * rom_val)
      end
    end
    output
  end

end

r = RomanNumeral.new(1)
p r.to_roman
