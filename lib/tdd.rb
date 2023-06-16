class Array
    
    def my_uniq
        return self if self.empty?
        new_arr = []
        count = Hash.new(0)
        self.each do |ele|
            if count[ele] == 0
                count[ele] +=1
                new_arr << ele
            end
        end
        new_arr
    end

    def two_sum
        new_arr = []
        (0...self.length - 1).each do |i|
            (i + 1...self.length).each do |j|
                new_arr << [i, j] if self[i] + self[j] == 0
            end
        end
        new_arr
    end
    
end
