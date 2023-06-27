require "byebug"

def sum_to(n)
    return nil if n < 0
    return 0 if n == 0
    n + sum_to(n-1)
end

# sum_to(5)  # => returns 15
# sum_to(1)  # => returns 1
# sum_to(9)  # => returns 45
# sum_to(-8)  # => returns nil

def add_numbers(nums_array)
    case
    when nums_array.length == 0
        nil 
    when nums_array.length == 1
        nums_array[0]
    else
        nums_array[0] + add_numbers(nums_array[1..-1])
    end
end

def gamma_fnc(n)
    case
    when n <1
        nil
    when n == 1
        return 1
    else
        (n-1) * gamma_fnc(n-1)
    
    end
    # return nil if n < 1
    # return 1 if n == 1
    # (n - 1) * gamma_fnc(n-1)
end

p gamma_fnc(4)
p gamma_fnc(8)

def ice_cream_shop(flavors,favorite)
    return false if flavors.length == 0
    return true if flavors[0] == favorite || ice_cream_shop(flavors[1..-1],favorite)
    false
end

def reverse(string)
    return "" if string.length == 0
    string[-1] + reverse(string[0..-2])
end
