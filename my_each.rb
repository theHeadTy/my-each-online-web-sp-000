def my_each(words)
  if block_given?
    i = 0
    while i <= words.length
      yield words.at(i)
      i += 1
      break words if i == words.length
    end
  else
    'This block should not be run!'
  end
end

my_each(['hi', 'hello', 'bye', 'goodbye']) { |i|  puts i }

my_each(['arel', 'jon', 'logan', 'spencer']) { |i| puts i }