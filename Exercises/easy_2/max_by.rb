# def max_by(arr)
#   largest_value = 0
#   largest_element = arr.first
#   arr.each do |i|
#     block_val = yield(i)
#     if block_val > largest_value
#       largest_value = block_val
#       largest_element = i
#     end
#   end
#   largest_element
# end

# solutoin 
#
def max_by(array)
  return nil if array.empty?

  max_element = array.first
  largest = yield(max_element)

  array[1..-1].each do |item|
    yielded_value = yield(item)
    if largest < yielded_value
      largest = yielded_value
      max_element = item
    end
  end

  max_element
end


p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil