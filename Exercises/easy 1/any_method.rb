=begin

Loop over array
yield to in black
if value is true  break and return true

if no block yield returns true return false

empty array returns false

=end


def any?(arr)
  counter = 0
  while counter < arr.size
    return true if yield(arr[counter])
    counter += 1
  end
  false
end

p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false

# solution
def any?(collection)
  collection.each { |item| return true if yield(item) }
  false
end