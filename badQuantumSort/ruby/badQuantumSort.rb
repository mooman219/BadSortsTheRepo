def sort(numbers)
  states = numbers.uniq
  num_counts = numbers.reduce(Hash.new(0)){|memo,n| memo[n] += 1;memo}
  state_vector = numbers.reduce([]){|memo, n| memo << states}

  observed = observe(state_vector)
  while !check(num_counts,observed)
    observed = observe(state_vector)
  end

  return observed

end

def observe(state_vector)
  return state_vector.map{|x| x[rand(x.size)]}
end

def check(number_count, collapsed_vector)
  count = collapsed_vector.reduce(Hash.new(0)){|memo,n| memo[n] += 1;memo}

  if count !=(number_count)
    return false;
  end

  return collapsed_vector.each_cons(2).all?{|x, y| (x <=> y) != 1}
end

def setup(list=(0...5).map{|x| rand(100)})
  arry = (0...5).map{|x| rand(100)}
  puts "Starting with #{list}"
  done = sort(list)
  puts "Finished with #{done}"

end

input = $stdin.read
input.lines do |line|
  chomped = line.chomp
  if (/^\[([\d]+,)*[\d]*\]$/ =~ chomped) != nil
    setup(eval(chomped))
  end

end
