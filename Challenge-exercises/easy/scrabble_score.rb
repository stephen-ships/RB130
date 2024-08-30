require "pry-byebug"
=begin

Problem
  Input: string
  Output: integer

  Rules
  words are case-insensitive


Examples/Test Cases:
Scrabble class

Constructor
takes string as input 
need to be able to handle inputs of nil, and or whitespace chars

score method
takes the supplied word from input and calculates score
returns scrabble score

class method score
  take string as input
  takes gets the calculate score of the word and returns the integer value

Data Structures:
Hash to represent lettes and corresponding score value
string for word
collection of the chars in the word


Algorithms:
constructor
take input 


score instance method
return 0 if invalid input
iterate over each letter calculating the score
return final score

score class method

invoke instance method and return value

=end

# Value
# %w(A, E, I, O, U, L, N, R, S, T).map(&:downcase)	1
# %w(D, G).map(&:downcase)	2
# %w(B, C, M, P).map(&:downcase) 	3
# %w(F, H, V, W, Y).map(&:downcase) 	4
# %w(K).map(&:downcase) 	5
# %w(J, X).map(&:downcase) 	8
# %w(Q, Z	).map(&:downcase) 10


class Scrabble
  attr_reader :word
  def initialize(word)
    @word = word
  end

  def score
    # Regex returns match object if empty string or whitespace char or empty string
    return 0 if !word || word.match(/^\s*$/) 
    word.downcase.chars.reduce(0) do |score, char|
      case
      when %w(A E I O U L N R S T).map(&:downcase).include?(char)
        score + 1
      when %w(D G).map(&:downcase).include?(char)
        score + 1
      when %w(B C M P).map(&:downcase).include?(char)
        score + 3
      when %w(F H V W Y).map(&:downcase).include?(char)
        score + 4
      when %w(K).map(&:downcase).include?(char)
        score + 5
      when %w(J X).map(&:downcase).include?(char)
        score + 8
      when %w(Q Z).map(&:downcase).include?(char)
        score + 10
      end
    end
  end

  def self.score(word)
    self.new(word).score
  end
end

# word = Scrabble.new("street")
# p word.score
# # word = Scrabble.new(nil)
# # p word.score

# p Scrabble.score("street")
