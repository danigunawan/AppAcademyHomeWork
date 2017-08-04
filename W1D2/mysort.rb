
class Array

  def my_sort!(&prc)
    self.length.times do
      (0...(self.length-1)).each do |i|
        self[i], self[i + 1] = self[i+1], self[i] if prc.call(self[i], self[i + 1])
      end
    end
    self
  end

  def my_sort_by!(&prc)
    self.length.times do
      (0...(self.length-1)).each do |i|
        if prc.call(self[i]) > prc.call(self[i+1])
          self[i], self[i+1] = self[i+1], self[i]
        end
      end
    end
    self
  end

end

if __FILE__ == $PROGRAM_NAME
  # a = ['a','t','c']
  # dict = ['c','a','t']
  # p a.sort_by { |letter| dict.index(letter) }
  # p a.sort_by { |letter| ('a'..'z').to_a.index(letter) }
  # p a
  a = ['a','t','c']
  dict = ['c','a','t']
  p a.my_sort_by! { |letter| dict.index(letter) }
  p a.my_sort_by! { |letter| ('a'..'z').to_a.index(letter) }
  p a

  a = ['a','t','c']
  dict = ['c','a','t']
  p a.sort_by! { |letter| dict.index(letter) }
  p a.sort_by! { |letter| ('a'..'z').to_a.index(letter) }
  p a
end
