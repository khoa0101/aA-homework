class Map
    def initialize
      @map = Array.new
    end

    def set(key, value)
      @map.each do |sub_arr|
        if sub_arr[0] == key
          if sub_arr[1].nil?
            sub_arr << value
          else
            sub_arr[1] == value
        end
      end
      
    end

    def get(key)
      @map.each do |sub_arr|
        if sub_arr[0] == key
          return sub_arr[1]
        end
      else
        sub_arr << [key, value]
      end
    end

    def delete(key)
    end

    def show
      @ivar[0]
    end
end
