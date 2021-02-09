DECK = { '2' => 4, '3' => 4, '4' => 4, '5' => 4, '6' => 4, '7' => 4,
         '8' => 4, '9' => 4, '10' => 4, 'Jack' => 4, 'Queen' => 4,
         'King' => 4, 'Ace' => 4 }

VALUES = { '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
           '8' => 8, '9' => 9, '10' => 10, 'Jack' => 10, 'Queen' => 10,
           'King' => 10, 'Ace' => 11 }

STAY_NUM = 17
BUST_NUM = 21
ROUNDS_TO_WIN = 5

def prompt(string)
  puts "==> #{string}"
end

def welcome_message
  puts "Open up your wallet, because it's time to play..."
  sleep(1.5)
  puts ""
  puts "               /$$$$$$    /$$   "
  puts "               /$$__  $$ /$$$$  "
  puts "              |__/  \ $$|_  $$  "
  puts "                /$$$$$$/  | $$  "
  puts "               /$$____/   | $$  "
  puts "              | $$        | $$  "
  puts "              | $$$$$$$$ /$$$$$$"
  puts "              |________/|______/"
  puts ""
  sleep(1.5)
  puts "Where the first to win #{ROUNDS_TO_WIN} rounds takes it all!"
  sleep(2)
end

def initialize_deck
  DECK.dup
end

def deal_card!(deck)
  card = nil
  loop do
    card = deck.keys.sample
    break if deck[card] > 0
  end
  deck[card] -= 1
  card
end

def hit_or_stay
  answer = ''
  loop do
    prompt "Would you to hit or stay? ('h' or 's')"
    answer = gets.chomp.downcase
    break if ['h', 's'].include?(answer)
    prompt "Typo?"
  end
  answer
end

def join_and(cards)
  case cards.length
  when 2
    "#{cards[0]} and #{cards[1]}"
  else
    string = cards[0..-2].join(', ')
    string << ' and '
    string << cards.last
  end
end

def player_turn(dck, hand, total_hsh)
  return if bust?(total_hsh[:player])
  answer = hit_or_stay

  case answer
  when 'h'
    hand << deal_card!(dck)
    total_hsh[:player] = calc_sum(hand)
    display_hit_message(:player, hand, total_hsh[:player])
    player_turn(dck, hand, total_hsh)
  when 's'
    display_stay_message(:player)
  end
end

def dealer_turn(dck, hand, totals_hsh)
  return if bust?(totals_hsh[:dealer])

  if totals_hsh[:dealer] < STAY_NUM
    hand << deal_card!(dck)
    totals_hsh[:dealer] = calc_sum(hand)
    display_hit_message(:dealer)
    dealer_turn(dck, hand, totals_hsh)
  elsif totals_hsh[:dealer] <= BUST_NUM
    display_stay_message(:dealer)
  end
end

def bust?(num)
  num > BUST_NUM
end

def calc_sum(hand)
  sum = hand.map { |card| VALUES[card] }.sum
  counter = hand.count('Ace')
  loop do
    break if counter == 0 || sum <= BUST_NUM
    sum -= 10 if sum > BUST_NUM
    counter -= 1
  end
  sum
end

def determine_winner(totals_hsh)
  totals_hsh[:player] > totals_hsh[:dealer] ? :player : :dealer
end

def play_again?
  prompt "Continue to next round? (y)es or (n)o"
  loop do
    response = gets.chomp.downcase
    return true if ['yes', 'y'].include?(response)
    return false if ['no', 'n'].include?(response)
    prompt "Sorry, I only understand (y)es or (n)o."
  end
end

def display_header(rnd, scr)
  puts "=================Round ##{rnd}================="
  puts "=========== #{format_score(scr)} =========="
end

def format_score(scr)
  "Player: #{scr[:player]} Dealer: #{scr[:dealer]}"
end

def display_opening_hands(plyr_hand, dlr_hand, totals_hsh)
  puts "Dealer has: #{dlr_hand[0]} and unknown"
  puts "Player has: #{join_and(plyr_hand)} " \
       "(#{totals_hsh[:player]})"
end

def display_final_hands(plyr_hand, dlr_hand, totals_hsh)
  prompt "Time to reveal hands!"
  sleep(1)
  prompt "Dealer's hand: #{join_and(dlr_hand)} " \
  "(#{totals_hsh[:dealer]})."
  sleep(1)
  prompt "Player's hand: #{join_and(plyr_hand)} " \
  "(#{totals_hsh[:player]})."
  sleep(1)
end

def display_hit_message(plyr, hnd = nil, sum = nil)
  prompt "#{plyr.capitalize} hit!"
  if plyr == :player
    prompt "After hitting, #{plyr} has: #{join_and(hnd)} (#{sum})"
  end
  sleep(1)
end

def display_stay_message(plyr)
  prompt "#{plyr.capitalize} decided to stay."
  sleep(1)
end

def display_tiebreaker_message
  prompt "(In the case of ties, the dealer wins. Not fair, huh?)"
  sleep(1)
end

def update_score(score, plyer)
  score[plyer] += 1
end

def display_ending(situation, dlr_hand, totals_hsh)
  case situation
  when :player_bust
    prompt "Oh no! You busted! Game over!"
  when :dealer_bust
    prompt "The dealer busted!"
    prompt "The dealer's hand was #{join_and(dlr_hand)} " \
           "(#{totals_hsh[:dealer]})."
    prompt "You win!"
  when :player
    prompt "The player won!"
  when :dealer
    prompt "The dealer won!"
  end
end

def display_grand_winner(winner)
  prompt "The #{winner} takes it all!"
  prompt "They were the first to win #{ROUNDS_TO_WIN} rounds!"
end

# End of methods

system 'clear'
welcome_message
score = { player: 0, dealer: 0 }
round = 0

loop do
  system 'clear'
  round += 1
  deck = initialize_deck
  player_hand = [deal_card!(deck), deal_card!(deck)]
  dealer_hand = [deal_card!(deck), deal_card!(deck)]
  totals = { player: calc_sum(player_hand), dealer: calc_sum(dealer_hand) }

  # Display opening hands
  display_header(round, score)
  display_opening_hands(player_hand, dealer_hand, totals)

  # Player turn
  player_turn(deck, player_hand, totals)
  if bust?(totals[:player])
    ending = :player_bust
    update_score(score, :dealer)
  end

  # Dealer turn
  if !bust?(totals[:player])
    dealer_turn(deck, dealer_hand, totals)
    if bust?(totals[:dealer])
      ending = :dealer_bust
      update_score(score, :player)
    end
  end

  # Compare cards
  if !bust?(totals[:player]) && !bust?(totals[:dealer])
    display_final_hands(player_hand, dealer_hand, totals)
    ending = determine_winner(totals)
    update_score(score, ending)
  end

  # Display results
  display_ending(ending, dealer_hand, totals)
  display_tiebreaker_message if totals[:player] == totals[:dealer]

  # Display score
  prompt format_score(score)

  # Display grand results
  grand_winner = score.select { |_, v| v >= ROUNDS_TO_WIN }.keys[0]
  display_grand_winner(grand_winner) if grand_winner

  # Play again?
  break if grand_winner || !play_again?
end

prompt "Thanks for playing 21!"
