class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    @map.each do |pair|
      if pair[0] == key
        pair[1] = value
        return
      end
    end
    @map.push([key, value])
  end

  def lookup(key)
    @map.each do |pair|
      if pair[0] == key
        return pair[1]
      end
    end
  end

  def remove(key)
    @map.each do |pair|
      if pair[0] == key
        @map.delete_at(@map.index(pair))
        return
      end
    end
  end

  def show
    @map
  end
end
