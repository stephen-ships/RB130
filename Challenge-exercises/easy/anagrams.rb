require "pry"
=begin

Problem
  Input: String, and list of string representing possible anagrams
  Output: sub-Array of strings representing the anagrams from the list of possible anagrams

  Anagram
  - same number of letters
  - same letters in different order
  - exact same number of letters

  Rules:
  should be case insensitive
  - each letter can only be used once
  - identical word spelling order as input is not an anagram
  - cannot be a subset of a word
  - even if checksum same not an anagram

Anagram Class
Constructor method 
- takes string
- saves the input to instance variable

match method
- takes an array of string
- checks if the input word is anagram in provided list
- return the sublist or empty string if none

Examples / Test Cases



Data Structures:
String 
might want to convert the string into a collection of chars

Collection of strings
convert each string to collection of chars


Algorithms
iterate over input collection of strings
  sort the string
  check if string is anagram
  select string if so
return list of anagrams

helper method
if words are same return false

sort org string
sort input str

if sorted words equal eachother return true



=end

class Anagram
  attr_reader :saved_word
  def initialize(word)
    @saved_word = word
  end

  def match(words)
    words.select do |word|
      anagram?(word)
    end
  end

  def anagram?(word)
    return false if saved_word.downcase == word.downcase
    saved_word.downcase.chars.sort.join == word.downcase.chars.sort.join
  end
end

