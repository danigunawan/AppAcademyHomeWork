
def sluggish_octopus(fishes) # O(n^2)
  longest_fish = fishes[0]
  (0...fishes.length - 1).each do |i|
    (i + 1..fishes.length - 1).each do |j|
      longest_fish = fishes[j] if fishes[j].length > fishes[i].length
    end
  end
  longest_fish
end

def dominant_octopus(fishes) # O(n * log n)
  sorted_fishes = octopus_sort(fishes)
  sorted_fishes.last
end

def octopus_sort(array) #quicksort
  return array if array.length <= 1
  pivot = array.first.length
  left = array[1..-1].select { |n| n.length <= pivot }
  right = array[1..-1].select { |n| n.length > pivot }
  octopus_sort(left) + [array.first] + octopus_sort(right)
end

def clever_octopus(fishes) # O(n)
  longest_fish = fishes[0]
  fishes.each do |fish|
    longest_fish = fish if fish.length > longest_fish.length
  end
  longest_fish
end

def slow_dance(dir, tiles_array) # O(n)
  tentical = 0
  tiles_array.each_with_index do |tile, i|
    tentical = i if tile == dir
  end
  tentical
end

def constant_dance(dir, tiles_hash) # O(1)
  tiles_hash[dir]
end


if __FILE__ == $PROGRAM_NAME
  fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

  p sluggish_octopus(fishes)

  p dominant_octopus(fishes)

  p clever_octopus(fishes)

  tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
  tiles_hash = {}
  tiles_array.each_with_index do |dir, i|
    tiles_hash[dir] = i
  end

end
