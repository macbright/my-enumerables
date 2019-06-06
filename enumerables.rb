module Enumerable
    # def my_each
    #   self.length.times do |x|
    #     yield(self[x])
    #   end
    # end
    def my_each
        self.length.times do |index|
            item = self[index]
            yield(item)
        end
    end
end

arr = [2,3,4,5,6,8,9,10,7]

def test1(arr)
    include Enumerable
    arr.my_each do |i|
      "#{i * 2} "
    end
end
print test1(arr)