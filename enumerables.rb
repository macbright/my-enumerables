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

    def my_select
      arr = Array.new
      self.length.times do |x|
        if yield(self[x])
          arr.push(x)
        end
      end
      arr
    end
    
    def my_all?
      self.length.times do |x|
        if !yield(self[x])
          return false
        else 
          return true
        end
      end
    end


    
end

def test1(arr)
    include Enumerable
    arr.my_all? do |i|
     print i < 20

    end
end
arr = [2,3,4,5,6,8,9,10,12]
test1(arr) 