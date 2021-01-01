VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

def prompt(message)
  puts "=> #{message}"
end

def shortcut_to_valid_choice(input)
  case input
  when 'r'
    'rock'
  when 'p'
    'paper'
  when 'sc'
    'scissors'
  when 'l'
    'lizard'
  when 'sp'
    'spock'
  else
    input
  end
end

def win?(first, second)
  winning_rules = { 'rock' => ['scissors', 'lizard'],
                    'paper' => ['rock', 'spock'],
                    'scissors' => ['paper', 'lizard'],
                    'lizard' => ['spock', 'paper'],
                    'spock' => ['rock', 'scissors'] }
  winning_rules[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt "You won!"
  elsif win?(computer, player)
    prompt "You lost!"
  else
    prompt "It's a tie!"
  end
end

player_score = 0
comp_score = 0

loop do
  choice = ''

  loop do
    prompt "Choose one: #{VALID_CHOICES.join ', '}.
                (Or r, p, sc, l, sp for shortcuts)"
    choice = gets.chomp

    choice = shortcut_to_valid_choice(choice)

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt "That's not a valid choice"
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt "You chose #{choice} and computer chose #{computer_choice}"

  display_results(choice, computer_choice)

  if win?(choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, choice)
    comp_score += 1
  end

  prompt "The score is #{player_score} to #{comp_score}."

  if player_score == 5
    prompt "Nice! You won the grand final!"
    break
  elsif comp_score == 5
    prompt "Doh! The computer won the grand final!"
    break
  end

  prompt "Do you want to play again? (y/n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing!"
