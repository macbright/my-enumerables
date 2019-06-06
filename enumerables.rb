module Enumerable
    def my_each
      self.length.times do |x|
        yield(self[x])
      end
    end

    def my_each_with_index
      index = 0
      self.length.times do |x|
        yield(index)
        index += 1
      end
    end
    
end

def test1(arr)
    include Enumerable
    arr.my_each_with_index do |i|
      print i
    end
end
arr = [2,3,4,5,6,8,9,10,7]
test1(arr) 