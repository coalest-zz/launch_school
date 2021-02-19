=begin
-----------------------INSTRUCTIONS--------------------------------------

--------------------------PROBLEM----------------------------------------

Input: string of words separated by spaces

Output:

---------------------------RULES-----------------------------------------
Explicit:

Implicit:

--------------------------EXAMPLES---------------------------------------


----------------------------ALGO----------------------------------------

=end
require 'pry'

VALID_INPUT_WORDS = %w(PUSH PRINT ADD SUB MULT DIV MULT MOD POP)

def display_error(situation)
  case situation
  when :empty_stack
    puts 'Error: Stack Empty'
  when :invalid_input
    puts "Error: Invalid Input"
  end
  'ERROR'
end

def valid_num?(num)
  num.to_i.to_s == num
end

def minilang(input)
  register = 0
  stack = []

  input.split.each do |word|
    if VALID_INPUT_WORDS.none?(word) && !valid_num?(word)
      return display_error(:invalid_input)
    elsif VALID_INPUT_WORDS[2..-1].any?(word) && stack.empty?
      return display_error(:empty_stack)
    end

    case word
    when 'PUSH' then stack.push(register)
    when 'ADD'  then register += stack.pop
    when 'SUB'  then register -= stack.pop
    when 'MULT' then register *= stack.pop
    when 'DIV'  then register /= stack.pop
    when 'MOD'  then register %= stack.pop
    when 'POP'  then register = stack.pop
    when 'PRINT'then puts register
    else
      register = word.to_i
    end
    # binding.pry
  end
  nil
end

#FURTHER EXPLORATION:
minilang("3 PUSH 5 MOD PUSH 3 PUSH 7 PUSH 4 PUSH 5 MULT SUB ADD DIV PRINT")
# minilang('PRINT')
# # 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')
# # (nothing printed; no PRINT commands)