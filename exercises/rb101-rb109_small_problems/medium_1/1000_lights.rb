=begin
-----------------------INSTRUCTIONS--------------------------------------
You have a bank of switches before you, numbered from 1 to n. Each switch
is connected to exactly one light that is initially off. You walk down the
row of switches and toggle every one of them. You go back to the beginning,
and on this second pass, you toggle switches 2, 4, 6, and so on. On the
third pass, you go back again to the beginning and toggle switches 3, 6,
9, and so on. You repeat this process and keep going until you have been
through n repetitions.

Write a method that takes one argument, the total number of switches, and
returns an Array that identifies which lights are on after n repetitions.
--------------------------PROBLEM----------------------------------------

Input: integer

Output: array of integers

---------------------------RULES-----------------------------------------
Explicit:

Implicit: n must be 1 or greater?

--------------------------EXAMPLES---------------------------------------
lights_on(5) == [1, 4]
lights_on(10) == [1, 4, 9]

----------------------------ALGO----------------------------------------
create an array with n number of lights

round 1
turn on every light
  if
round 2

=end

def flip(num)
  num == 'off' ? 'on' : 'off'
end

def lights_on(n)
  array = Array.new(n, 'off')
  on_arr = []

  1.upto(array.size) do |num|
    array.each_with_index do |element, i|
      array[i] = flip(element) if (i + 1) % num == 0
    end
  end

  array.each_with_index do |el, i|
    on_arr << (i + 1) if el == 'on'
  end

  on_arr
end

# def lights(n, status)
#   array = Array.new(n, 'off')
#   on_arr = []
#   off_arr = []

#   1.upto(array.size) do |num|
#     array.each_with_index do |element, i|
#       array[i] = flip(element) if (i + 1) % num == 0
#     end
#   end

#   array.each_with_index do |el, i|
#     on_arr << (i + 1) if el == 'on'
#     off_arr << (i + 1) if el == 'off'
#   end

#   case status
#   when 'on' then on_arr
#   when 'off' then off_arr
#   end
# end

def display(arr_on, arr_off)
  puts "Lights #{arr_on.join(' ')} are on. Lights #{arr_off.join(' ')} are off."
end
p lights_on(5) == [1, 4]
p lights_on(10) == [1, 4, 9]
display(lights(5, 'on'), lights(5, 'off'))