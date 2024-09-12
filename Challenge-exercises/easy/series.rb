=begin
Problem:
Input: String of a series of numbers and integers for size of series
Output: array of all the consecutive series of the specified length


Examples:
class Series
  Constructor
    takes string as arg

  instance method slices
    takes integer as arg
    throw error if slice size is > than series string size
    finds all consecutive slices of size
    returns each slice as an array of arrays


Data Structure:
String and collection 
Want to transform the string into a colelction of character
Collection of found slices
each slice is a collection of two integers


Algorithm:
Constructor
  initialize 
  save input to instance variable

slices method
take 1 arg slice size
throw Argument error if size of series > slice size
split series string into array of char
need to convert str to integer
get all the consecutive slices of slice length
add each to collection 
return the collection of collections

finding the consecutive slices



=end


class Series
  def initialize(str_series)
    @str_series = str_series
  end

  def slices(slice_size)
    raise ArgumentError if str_series.size < slice_size
    str_series.chars.map(&:to_i).each_cons(slice_size).to_a
  end

  private
  attr_reader :str_series

end