require 'byebug'

class LRUCache
  attr_reader :hash
  def initialize(size)
    @size = size
    @hash = {}
  end

  def count
    # returns number of elements currently in cache
    @hash.count
  end

  def add(el) # -> O(n)
    # adds element to cache according to LRU principle
    if count == @size
      oldest_el = @hash.min_by { |_, v| v }.first
      @hash.delete(oldest_el)
      @hash[el] = Time.now
    else
      @hash[el] = Time.now
    end
  end

  def show # -> O(n)
    # shows the items in the cache, with the LRU item first
    cache = @hash.sort_by { |_,v| v }
    cache.map { |el| el[0] }
  end

  private
  # helper methods go here!

end


if __FILE__ == $PROGRAM_NAME
  # byebug
  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})


  p johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
end
