array = [1, 2, 3, 4, 5]

# def reduce(array, acc = 0)
#   acc += array[0] # start accumulator by adding value of first element to acc
#   counter = 1

#   while counter < array.size
#     acc = yield(acc, array[counter])
#     counter += 1
#   end
#   acc
# end

# p reduce(array) { |acc, num| acc + num }                    # => 15
# p reduce(array, 10) { |acc, num| acc + num }                # => 25
# # p reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass



# Launchschool Solution
# modified for challenge exercise
def reduce(array, default=0)
  counter = 1
  # If default value is zero just get the first element
  # otherwise Increment accumulator by first element in array plus the default start value 
  accumulator = default == 0 ? array[default] : default + array[0]

  while counter < array.size
    accumulator = yield(accumulator, array[counter])
    counter += 1
  end

  accumulator
end

p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(array, 10) { |acc, num| acc + num }                # => 25

p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']