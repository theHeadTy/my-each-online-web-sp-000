def my_each(words)
  unless 
  #if block_given?
    i = 0
    arr = []
    while i <= words.length
      yield words.at(i)
      i += 1
      break words if i == words.length
    end
  #else
  #  'This block should not run!'
  #end
end

my_each(['hi', 'hello', 'bye', 'goodbye']) { |i|  i }

my_each(['arel', 'jon', 'logan', 'spencer']) { |i| i }