=begin
PEDAC

Problem:
  Input: 3 integers
  Output: string representing type of triangle

  Notes:
  Valid Triangle
  - To be a valid triangle, each side length must be greater than 0.
  - To be a valid triangle, the sum of the lengths of any two sides 
  must be greater than the length of the remaining side.

  Types of Triangles
  - An equilateral triangle has three sides of equal length.
  - An isosceles triangle has exactly two sides of the equal length.
  - A scalene triangle has three sides of unequal length (no two sides have equal length).

  Need a Triangle class
  - constructor with 3 arguments (3 sides lengths)
    - raise exception if any side is <= 0
      - Raise `ArgumentError` size less than 0
    - raise exception if side lengths together dont describe valid triangle
      - Raise `ArgumentError` sides invalid triangle
  - method `kind` returns string representing type of triangle
  - also possibly helper methods

Examples/Test Cases:
See tests

7, 3, 2
7,3 7,2 3,2

10, 1, 3
[[10,1], [10,3], [1,3]] 

valid:
5, 4, 2
5,4 5,2 4,2


Data Structures:
Use integers to represent the triangle side lengths
Use array to store the triangle lenghts in the Triangle instance variable

Algorithm:
  - Contructor
    - Check that every side is greater than 0 
      - raise Argument error if not
    - Check that supplied arguments create valid triangel
      - raise ArgumentError if not
      - get combinations of 2 sides
      - countr from 2 down to 0 for index
      - check that the sume of each combination is greater than side at that index
      end
      end
    - if both checks satisfied then save the sides to the `sides` instance variable

  - `kind` method
    - return `equilateral` if all sides equal each other 
    - return `isosceles` if only 2 sides equal each other
    - return `scalene` if all sides are unequal no two sides equal each other

Code:
=end

class Triangle
  def initialize(a_side, b_side, c_side)
    
  end

  def legal_triangle?(*sides)
    raise ArgumentError unless sides.all? {|side| side > 0}
      
    sides_combs = side.combination(2).to_a
    sides_sums = sides_combs.map(&:sum)
    2.downto(0).with_index do |index|
      
    end
    raise ArgumentError unless 
  end

end