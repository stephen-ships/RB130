def each_cons(arr)
  # loop over 2 at a time untile the second elements index is equal to the size of array
  counter_1 = 0
  counter_2 = 1
  while counter_1 < arr.size and counter_2 < arr.size
    yield(arr[counter_1], arr[counter_2])
    counter_1 += 1
    counter_2 += 1
  end
end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
p result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}
p result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
p result == nil