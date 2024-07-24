=begin
Write a method that takes a sorted array of
integers as an argument, and returns an array 
that includes all of the missing integers (in order)
between the first and last elements of the argument.

Problem
  Input: array of ints
  Output: array of ints

  Implicit:
  Explicit: return empty array if none

Exmaples

missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
-3, -2, 5
missing([1, 2, 3, 4]) == []
missing([1, 5]) == [2, 3, 4]
missing([6]) == []


Data Structures
array 
integers

Algorithm
Looking at numbers from range of first to last
turn range to array 
find difference between both arrays
reutrn difference

=end



def missing(arr)
  (arr.first..arr.last).to_a.difference(arr)
end


p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []