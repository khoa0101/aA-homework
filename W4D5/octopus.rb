def sluggish_octopus(fish)
  (0...fish.length).each do |i|
    (i + 1...fish.length).each do |j|
      if fish[i].length > fish[j].length
        fish[i], fish[j] = fish[j], fish[i]
      end
    end
  end
  return fish[-1]
end

def dominant_octopus(fish)
  fish = merge_sort(fish)
  return fish[-1]
end

def merge_sort(fish)
  return fish if fish.length < 2

  mid = fish.length / 2
  lower = merge_sort(fish[0...mid])
  upper = merge_sort(fish[mid..-1])

  arr = []

  while !lower.empty? && !upper.empty?
    if lower.first.length < upper.first.length 
      arr << lower.shift
    else
      arr << upper.shift
    end
  end

  arr.concat(lower)
  arr.concat(upper)
  
  return arr
end

def clever_octopus(fish)
  max = ""
  fish.each { |fishy| max = fishy if fishy.length > max.length }
  return max
end

def slow_dance(input, tiles)
  tiles.each_with_index do |tiles, i|
    return i if input == tiles
  end
end

def constant_dance(input, tiles)
  return tiles[input]
end

p sluggish_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']) #=> "fiiiissshhhhhh"
p dominant_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']) #=> "fiiiissshhhhhh"
p clever_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']) #=> "fiiiissshhhhhh"

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
tiles_hash = {"up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3, "down" => 4, "left-down" => 5, "left" => 6,  "left-up" => 7}
p slow_dance("up", tiles_array)
p constant_dance("right-down", tiles_hash)