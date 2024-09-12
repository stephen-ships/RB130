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
  iterate over range from A to input
    Output the current letter to string
    if letter is not a double the letter
    return string to block with new line

  iterate up over range of letters from A to letter
  iterate down from letter before itself down to A 

  iterating over each row number of iterations being the total size of diamond
  

=end