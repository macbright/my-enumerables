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


    def my_any?
      self.length.times do |x|
        if yield(self[x]) != false
          return true
        end
      end
      false
    end


    def my_none?
      self.length.times do |x|
        if yield(self[x]) 
          return false
        end
      end
      true
    end


    def my_count
      index = 0
      self.length.times do |x|
        # yield(index)
        index += 1
      end
      index
    end


    def my_map(proc = nil)
      arr = Array.new
      if proc 
        self.length.times do |x|
          arr.push(proc.call(self[x]))
        end
      else 
        self.length.times do |x|
          arr.push(yield(self[x]))
        end
      end
      arr
    end


    def my_inject
      first_item = self[0]
      self.shift
      self.my_each do |x|
        next if x == 0
        # first_item = yield(self[x], first_item)
        first_item = yield(first_item, x)
      
      end
      first_item 
    end
    
end


def test1(arr)
    include Enumerable
    arr.my_map do | y|
      y * 2
    end
end
arr = [2,3,4,2,5,6,5]
print test1(arr) 