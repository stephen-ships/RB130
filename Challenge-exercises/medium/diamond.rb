=begin

Problem:
  Input: string letter
  Output: triangle shape

  Rules:
    The first row contains one 'A'.
    The last row contains one 'A'.
    All rows, except the first and last, have exactly two identical letters.
    The diamond is horizontally symmetric.
    The diamond is vertically symmetric.
    The diamond has a square shape (width equals height).
    The letters form a diamond shape.
    The top half has the letters in ascending order.
    The bottom half has the letters in descending order.
    The four corners (containing the spaces) are triangles.

Examples:
class Diamond

class method
  takes string argumetn
  makes diamond based on letter
  return diamond string
" A "
"B B"
" A "
Data Structure:
strings
possible collection of strings in rows of diamond


Algorithm:

class method make_diamond
  take input string and capitalize
  all string letters dealing with should be capitalized
  could possible check input that it falls in range from A to Z

  Diamond ranges is from A to input letter
  Get size of the range to calculate height and width of diamond
  take size * 2 - 1 to get the height and width

  initialze empty diamond string

  find the current letter in diamond
  iterate up over range of letters from A to letter
  iterate down from letter before itself down to A
    center row with spaces
    output row
    join each row with new line

output row helper
  for A output 'A'
    for B output "B B"
  for everythign else
    output letter with correct spaces


  hleper for number of spaces
  A is zero
  B is 1
  C is 3
  Everything after c is two more than previous


    helper width of diamond
    use spaces method and add 2 
    A return 1
    


  iterating over each row number of iterations being the total size of diamond

C 3 3
D 5, 4
E 7, 5 
F 9, 6
G 11, 7

=end

class Diamond
  def self.make_diamond(letter)
    letter = letter.upcase
    output_diamond = ""

    width = calc_width(letter)
    ("A"...letter).each do |letter|
      row = make_row(letter)
      output_row = row.center(width, " ")
      output_diamond += output_row + "\n"
    end
    
    ("A"..letter).reverse_each do |letter|
      row = make_row(letter)
      output_row = row.center(width, " ")
      output_diamond += output_row + "\n"
    end
    output_diamond
  end

  class << self
    private

    def calc_width(letter)
      return 1 if letter == 'A'
      calc_spaces(letter).chars.size + 2
    end

    def make_row(letter)
      case letter
      when "A" then "A"
      when "B" then "B B"
      else
        "#{letter}#{calc_spaces(letter){letter}}"
      end
    end
  
    def calc_spaces(letter)
      case letter
      when "A" then ""
      when "B" then " "
      when "C" then "   "
      else
        backfill = ("C"..letter).to_a.size
        index = ("A".."Z").to_a.index(letter)
        spaces = backfill + index
        " " * spaces
      end
    end
  end
end