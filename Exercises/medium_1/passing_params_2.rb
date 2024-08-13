def params(arr)
  yield(arr)
end


birds = %w(raven finch hawk eagle)

params(birds) {|_,_, *raptors| puts raptors}