=begin
Problem:
  Input: integers
  Output:string


  Rules

Need Class BeerSong

class method vers
 takes 1 argument
1 argument create the in 99 bottle song for that number

class method verses
takes 2 arguments
2 arguments start at input verse down to second input verse
output verse as a string
1st arg needs to be greater than the second

class method lyrics
output the 99 bottles song lyrics down to zero




Examples / Test Cases
0 bottles should be represented with word "none"
1 bottle need to use the word "bottle" not bottles

Be mindful of new line characters
each line of verse separated by new line char
new verse shoudl be separated by 2 ne line dchars



Data Structures
String
possible array collection of strings


Algorithm
verse method
takes integers as argument

declare bottle string variable
if input - 1 == 1 bottle should be bottle others bottles
declare variable for second number
if input - 1 == 0 second number should be string none otherwise the integer value

product verse based on argument
string template with interpolation
input argument first
second is first arg - 1 

product string 

verses method
range from arg 1 to arg 2
intitialize output string
iterates over range
  concat output of verse method to string
chomp to remove double chars and append another new line
return output

lyrics 
run verses method with 99 and 0 as argments
return outputm

=end


class BeerSong
  def self.verse(curr_verse)
    
    num_bottles = curr_verse == 0 ? "no more" : curr_verse.to_s
    bottle_grammar = curr_verse == 1 ? "bottle" : "bottles"
    
    verse_part_1 = "#{num_bottles.capitalize} #{bottle_grammar} of beer on the wall, #{num_bottles} #{bottle_grammar} of beer.\n"

    if curr_verse == 1
      action = "Take it down and pass it around"
    elsif curr_verse == 0
      action = "Go to the store and buy some more"
    else
      action = "Take one down and pass it around"
    end

    if curr_verse - 1 < 0
      num_bottles = "99"
    elsif curr_verse - 1 == 0
      num_bottles = "no more"
      bottle_grammar = "bottles"
    elsif curr_verse - 1 == 1
      num_bottles = (curr_verse - 1).to_s
      bottle_grammar = "bottle"
    else
      num_bottles = (curr_verse - 1).to_s
      bottle_grammar = "bottles"
    end
    
    verse_part_2 = "#{action}, #{num_bottles} #{bottle_grammar} of beer on the wall.\n"

    verse_part_1 + verse_part_2
  end

  def self.verses(first_verse, last_verse)
    raise ArgumentError if last_verse > first_verse or last_verse < 0
    output = ''
    first_verse.downto(last_verse) do |curr_verse|
      output.concat(self.verse(curr_verse))
      p output
      output += "\n" unless curr_verse == last_verse
    end
    output
  end

  def self.lyrics
    self.verses(99, 0)
  end

end


p BeerSong.verses(99, 98)