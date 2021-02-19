# def rotate_array(arr)
#   arr2 = arr.dup
#   arr2.push(arr2.shift)
# end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_string(string)
  chars = string.chars
  rotate_array(chars).join
end

def rotate_int(int)
  arr_ints = int.digits.reverse
  rotate_array(arr_ints).join
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

p rotate_string('hello world')
p rotate_int(342)