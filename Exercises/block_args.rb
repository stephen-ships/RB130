def compute(arr)
  if block_given?
    yield(arr)
  else
    'Does not compute.'
  end
end

# p compute { 5 + 3 } == 8
# p compute { 'a' + 'b' } == 'ab'
# p compute == 'Does not compute.'

p compute(2) {|n| n + 3 } == 5
p compute('a') {|char| char + 'b' } == 'ab'
p compute(3) == 'Does not compute.'