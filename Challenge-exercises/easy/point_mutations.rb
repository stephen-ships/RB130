=begin

Problem:
Input: 2 strings representing DNA strands
Output: Integer representing hammind distance between the DNA strands

Explicit Rules
- If one strand is shorter check for differences in the shorter part of the strand
- Comparison must not mutate original DNA sequence string 

Examples/ Test Cases:
Create DNA class
Need constructor method that saves the DNA strand input
Define method `hamming_distance` that takes a DNA sequnce as argument and returns integer 
for number of differences 

Data Structures:
String representing DNA strands
Colleciton probably array ot iterate over each strand
Integer reprsenting differences

Algorithm:
Calculate if one strand is shorter than the other
Use the lenght of the shorter to know how far to check on the longer
Iterate over all char in the DNA objects DNA strand
Select the chars that are different at current index
return the size of the selcted collection


Code:
=end

class DNA
  attr_reader :strand
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    shortest_length = strand.size <= other_strand.size ? strand.size : other_strand.size
    strand.chars[...shortest_length].select.with_index do |char, index|
      char != other_strand[index]
    end.size
  end
end
