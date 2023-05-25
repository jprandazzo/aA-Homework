require "byebug"

fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']

#Sluggish Octopus
def sluggish(array)
    sorted = false
    until sorted
        sorted = true
        (0...array.length-1).each do |i|
            if array[i].length > array[i+1].length
                array[i],array[i+1] = array[i+1],array[i]
                sorted = false
            end
        end
    end
    array
end

def sluggish_longest(array)
    sluggish(array)[-1]
end


#Dominant Octopus
def dominant(array)
    return array if array.length == 1
    # debugger
    mid = array.length/2
    left = array[0...mid]
    right = array[mid..-1]

    arr = sort!(dominant(left),dominant(right))
    # arr[-1]
end

def sort!(left,right)
    # debugger
    sorted_arr = []
    until left.empty? || right.empty?
        if left[0].length <= right[0].length
            sorted_arr << left[0]
            left.delete(left[0])
        else
            sorted_arr << right[0]
            right.delete(right[0])
        end
    end
    sorted_arr + left + right
end

def dominant_longest(array)
    dominant(array)[-1]
end

#Clever Octopus

def clever(array)
    # larger = array[0]
    # (1...array.length).each do |i|
    #     larger = array[i] if array[i].length > larger.length
    # end
    # larger
    array.inject do |acc,el|
        if acc.length >= el.length
            acc
        else
            el
        end
    end
end

#DANCING
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
               "left",  "left-up"]

def slow_dance(str,array)
    array.each_with_index do |e,i|
        return i if str == e
    end
end

tiles_set = Set.new(tiles_array)

def fast_dance(str,array)
    arr2 = array.dup
    arr2.delete(str)
    arr2 ^ array
end
p slow_dance("right-down", tiles_array)

fast_dance("right-down", tiles_set)