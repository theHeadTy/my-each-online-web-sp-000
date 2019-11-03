def my_each(words)
  arr = words.empty? ? words : []
  if block_given?
    i = 0
    while i <= arr.length
      yield arr[i]
      i += 1
    end
    words if arr & words
  else
    'This block should not be run!'
  end
end

my_each(['hi', 'hello', 'bye', 'goodbye']) { |i|  i }

my_each(['arel', 'jon', 'logan', 'spencer']) { |i| i }