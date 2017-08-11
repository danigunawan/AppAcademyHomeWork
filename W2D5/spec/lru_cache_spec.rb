require 'rspec'
require 'lru_cache'

describe LRUCache do
  subject(:johnny_cache) { LRUCache.new(4) }

  describe "#add" do
    it "can add both strings and integers" do
      johnny_cache.add("I walk the line")
      johnny_cache.add(5)
      expect(johnny_cache.hash.keys.include?("I walk the line")).to be true
      expect(johnny_cache.hash.keys.include?(5)).to be true
    end
  end

  describe "#count" do

    it "can count itself" do
      johnny_cache.add("I walk the line")
      johnny_cache.add(5)
      expect(johnny_cache.count).to eq(2) # => returns 2
    end
  end

  describe "Folsom Test Blues" do
    it "Hangs it head and cries" do
      johnny_cache.add("I walk the line")
      johnny_cache.add(5)
      johnny_cache.add([1,2,3])
      johnny_cache.add(5)
      johnny_cache.add(-5)
      johnny_cache.add({a: 1, b: 2, c: 3})
      johnny_cache.add([1,2,3,4])
      johnny_cache.add("I walk the line")
      johnny_cache.add(:ring_of_fire)
      johnny_cache.add("I walk the line")
      johnny_cache.add({a: 1, b: 2, c: 3})


      expect(johnny_cache.show).to eq([[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}])
    end
  end
end
