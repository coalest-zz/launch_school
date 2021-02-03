require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

VALID_PLAYERS = ['player', 'computer', 'choose']

def prompt(string)
  puts "==> #{string}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "Reminder: You're #{PLAYER_MARKER}. Computer's #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |n| new_board[n] = INITIAL_MARKER }
  new_board
end

def joinor(array, delimiter = ', ', joiner = 'or')
  case array.size
  when 0 then ''
  when 1 then array[0].to_s
  when 2 then "#{array[0]} #{joiner} #{array[1]}"
  else
    array[-1] = "#{joiner} #{array[-1]}"
    array.join(delimiter)
  end
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece(brd)
  square = ''
  loop do
    prompt("Choose a square (#{joinor(empty_squares(brd))}):")
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt("Sorry that's not a valid choice")
  end
  brd[square] = PLAYER_MARKER
end

def find_key_square(brd, marker)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(marker) == 2
      return brd.select { |k, v| line.include?(k) && v == ' ' }.keys.first
    end
  end
  nil
end

def computer_places_piece(brd)
  square = find_key_square(brd, COMPUTER_MARKER)
  square = find_key_square(brd, PLAYER_MARKER) if !square
  square = 5 if !square && brd[5] == INITIAL_MARKER
  square = empty_squares(brd).sample if !square

  sleep(0.5)
  brd[square] = COMPUTER_MARKER
end

def place_piece!(brd, turn)
  turn == 'player' ? player_places_piece(brd) : computer_places_piece(brd)
end

def alternate_player(turn)
  turn == 'player' ? 'computer' : 'player'
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).all?(PLAYER_MARKER)
      return 'Player'
    elsif brd.values_at(*line).all?(COMPUTER_MARKER)
      return 'Computer'
    end
  end
  nil
end

def someone_won?(brd)
  !!detect_winner(brd)
end

player_score = 0
computer_score = 0

loop do
  board = initialize_board
  current_player = ''

  loop do
    prompt "Who should go first? ('player', 'computer', 'choose')"
    answer = gets.chomp
    if answer == 'choose'
      current_player = VALID_PLAYERS[0..1].sample
      prompt "#{current_player} was chosen!"
      sleep(1)
      break
    elsif VALID_PLAYERS.include?(answer)
      current_player = answer
      break
    else
      prompt "Please try again."
    end
  end

  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    case detect_winner(board)
    when 'Player'
      player_score += 1
    when 'Computer'
      computer_score += 1
    end

    prompt "#{detect_winner(board)} won this round!"
  else
    prompt "It's a tie!"
  end

  prompt "Player score: #{player_score}. Computer score: #{computer_score}"

  if player_score == 5
    prompt "You won the tournament! Congrats!"
    break
  elsif computer_score == 5
    prompt "The computer won the tournament. :( Better luck next time."
    break
  end

  prompt "Do you want to play again? (y/n)"
  response = gets.chomp
  break unless response.start_with?('y')
end

prompt "Thanks for playing!"
