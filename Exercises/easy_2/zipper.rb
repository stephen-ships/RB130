# create empyt arrya for new paris
# loop over each array
  # create empty array in current loop  for pair
  # add current index elemetn of both arrays to pair array
  # append new array pair to array of pairs

def zip(arr1, arr2)
  pairs = []
  arr1.each_with_index do |el, i|
    pairs << [el, arr2[i]]
  end
  pairs
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]