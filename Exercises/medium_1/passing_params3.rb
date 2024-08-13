items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(items)
#   puts "Let's start gathering food."
#   yield(items)
#   puts "We've finished gathering!"
# end



gather(items) do | *fruits, grains |
  puts fruits.join(", ")
  puts grains
end

gather(items) do |fruit ,*vegetables, grains |
  puts fruit
  puts vegetables.join(", ")
  puts grains
end

gather(items) do | fruit, *mixed |
  puts fruit
  puts mixed.join(", ")
end

gather(items) do | *produce |
  puts produce.join(", ")
end