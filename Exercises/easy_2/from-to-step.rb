def step(start, stop, step_val)
  counter = start
  while counter <= stop
    yield(counter) if block_given?
    counter += step_val
  end
end


p step(1, 10, 3) { |value| puts "value = #{value}" }