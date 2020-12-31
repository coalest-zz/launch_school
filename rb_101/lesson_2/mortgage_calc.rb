def prompt(message)
  puts ">> " + message
end

def valid_num(num)
  num.to_f > 0
end

prompt "Welcome to this mortgage calculator."

loan_amount = ''
apr = ''
loan_length_yrs = ''

loop do
  prompt "What will be your total loan amount?"

  loop do
    loan_amount = gets.chomp
    if valid_num(loan_amount)
      break
    else
      prompt "Error. Try inputing a number that's positive."
    end
  end

  prompt "What is your APR in %?"

  loop do
    apr = gets.chomp
    if valid_num(apr) && apr.to_f > 1 && apr.to_f < 100
      break
    elsif valid_num(apr) && apr.to_f < 1
      prompt "Error. That APR looks too low. Try putting one that is above 1%."
    else
      prompt "Error. Please choose an APR that is between 3% and 100%"
    end
  end

  prompt "And how long is your loan for (in years)?"

  loop do
    loan_length_yrs = gets.chomp
    if valid_num(loan_length_yrs)
      break
    else
      prompt "Error. Please put in a positive number."
    end
  end

  loan_length_months = loan_length_yrs.to_f * 12
  monthly_int_rate = apr.to_f / 100 / 12
  # m = p * (j / (1 - (1 + j)**(-n)))
  monthly_payment = loan_amount.delete('^0-9').to_f * (monthly_int_rate / (1 - (1 + monthly_int_rate)**(-loan_length_months)))

  prompt "Calculating..."
  sleep 2
  prompt "That would make your monthly payment $#{monthly_payment.round(2)}!"
  sleep 1
  prompt "Would you like to input new information?"
  answer = gets.chomp
  if answer.downcase.start_withgit? "y"
    prompt "Okay! Let's run it again with new numbers!"
  else
    break
  end
end

prompt "Thanks for using the calculator. Hope you enjoyed it!"
