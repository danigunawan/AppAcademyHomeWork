def subsets(arr)
  return [] if arr.empty?
  prev_subs = [subsets(arr[0...-1])]
  p prev_subs
  next_subs = prev_subs.map { |el| el << arr[-1] }
  p next_subs
  p prev_subs + next_subs
end

if __FILE__ == $PROGRAM_NAME
  arr = [1]
  puts "hi"
  p subsets(arr)
end
