class Stack
    def initialize
        @underlying_array = []
    end

    def size
        @underlying_array.length
    end

    def empty?
        @underlying_array.empty?
    end

    def top
        @underlying_array[-1]
    end

    def peek(num)

    end
end