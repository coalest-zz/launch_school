# ask the user for two numbers
# ask what they want to do with those two numbers
# perform calc
# output calculation

# answer = Kernel.gets()
# Kernel.puts(answer)
require 'yaml'
MESSAGES = YAML.load_file('configure_messages.yml')
LANGUAGE = 'en'

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  puts "=> #{message}"
end

def operator_to_message(num)
  case num
  when '1'
    num = 'Adding'
  when '2'
    num = 'Subtracting'
  when '3'
    num = 'Multiplying'
  when '4'
    num = 'Dividing'
  end
  x = 3 + 4
  num
end

prompt(MESSAGES['en']['welcome'])

name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt(MESSAGES['en']['name_error'])
  else
    break
  end
end

prompt('welcome_name')

num1 = ''
num2 = ''
operator = ''

loop do


  loop do
    prompt("What's the first number?")
    num1 = gets.chomp

    if valid_number?(num1)
      break
    else
      prompt("Try again. That number isn't valid")
    end
  end

  loop do
    prompt("What is the second number?")
    num2 = gets.chomp

    if valid_number?(num2)
      break
    else
      prompt("Try again. That number isn't valid")
    end
  end

  operator_prompt = <<-MSG
  What operation would you like to do? 
  1 add 
  2 sub 
  3 mult 
  4 div
  MSG

  operator = ''
  prompt(operator_prompt)

  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Try following directions")
    end
  end

  prompt("#{operator_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             num1.to_i + num2.to_i
           when '2'
             num1.to_i - num2.to_i
           when '3'
             num1.to_i * num2.to_i
           when '4'
             num1.to_f / num2.to_f
           end

  prompt("The result is #{result}")

  prompt("Do you want to do another calculations? (Y to go again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks #{name}! Come again next time!")
