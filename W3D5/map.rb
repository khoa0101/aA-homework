class Map
    def initialize
      @map = Array.new { Array.new }
    end

    def set(key, value)
      found = false
      if @map.empty? 
        @map << [key, value]
      else
        @map.each do |sub_arr|
          if sub_arr[0] == key
            found = true
            if sub_arr[1].nil?
              sub_arr << value
            else
              sub_arr[1] = value
            end
          end
        end
        if !found
          @map << [key, value]
        end
      end
      @map 
    end

    def get(key)
      @map.each do |sub_arr|
        if sub_arr[0] == key
          return sub_arr[1]
        end
      end
      return nil
    end

    def delete(key)
      @map.each_with_index do |sub_arr, i|
        if sub_arr[0] == key
          @map.delete_at(i)
          return sub_arr
        end
      end
    end

    def show
      @map
    end
end

p map_1 = Map.new
p map_1.set("a", 3)
p map_1
p map_1.set("b", 2)
p map_1
p map_1.set("c", 4)
p map_1
p map_1.set("c", 5)
p map_1
p map_1.get("a")
p map_1.delete("b")
p map_1.show