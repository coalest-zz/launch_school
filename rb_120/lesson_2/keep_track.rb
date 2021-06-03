require 'terminal-table'

class Paper
  def >(other_move)
    other_move.class == Rock || other_move.class == Spock
  end

  def <(other_move)
    other_move.class == Scissors || other_move.class == Lizard
  end
end

class Rock
  def >(other_move)
    other_move.class == Scissors || other_move.class == Lizard
  end

  def <(other_move)
    other_move.class == Paper || other_move.class == Spock
  end
end

class Scissors
  def >(other_move)
    other_move.class == Paper || other_move.class == Lizard
  end

  def <(other_move)
    other_move.class == Rock || other_move.class == Spock
  end
end

class Spock
  def >(other_move)
    other_move.class == Rock || other_move.class == Scissors
  end

  def <(other_move)
    other_move.class == Lizard || other_move.class == Paper
  end
end

class Lizard
  def >(other_move)
    other_move.class == Paper || other_move.class == Spock
  end

  def <(other_move)
    other_move.class == Scissors || other_move.class == Rock
  end
end

class Player
  MOVES = [:rock, :paper, :scissors, :lizard, :spock]
  attr_accessor :move, :name, :score
  attr_reader :history

  def initialize
    @move = nil
    @history = { rock: 0, paper: 0, scissors: 0, lizard: 0, spock: 0 }
    @score = 0
    set_name
  end

  def string_to_object(choice)
    self.move = Kernel.const_get(choice.capitalize).new
  end
end

class Human < Player
  def set_name
    n = ''
    loop do
      puts "what's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value."
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, scissors, lizard, or spock:"
      choice = gets.chomp
      break if Player::MOVES.include? choice.to_sym
      puts "Sorry, invalid choice."
    end

    history[choice.to_sym] += 1
    self.move = string_to_object(choice)
  end
end

class Computer < Player
  def set_name
    self.name = self.class
  end
end

class R2D2 < Computer
  def choose
    history[:rock] += 1
    self.move = Rock.new
  end
end

class Hal < Computer
  def choose
    choice = case rand(1..10)
             when 1..7  then :scissors
             when 8..10 then :rock
             end
    history[choice] += 1
    self.move = string_to_object(choice)
  end
end

class Chappie < Computer
  def choose
    choice = case rand(1..10)
             when 1..5  then :paper
             when 6..10 then :lizard
             end
    history[choice] += 1
    self.move = string_to_object(choice)
  end
end

class Sonny < Computer
  def choose
    choice = case rand(1..10)
             when 1     then :rock
             when 2     then :paper
             when 3     then :scissors
             when 4..6  then :lizard
             when 7..10 then :spock
             end
    history[choice] += 1
    self.move = string_to_object(choice)
  end
end

class RPSGame
  SCORE_TO_WIN = 2

  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = [R2D2.new, Hal.new, Chappie.new, Sonny.new].sample
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors!"
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors!"
  end

  def calc_who_won
    if human.move > computer.move
      human
    elsif human.move < computer.move
      computer
    end
  end

  def display_winner
    winner = calc_who_won
    if winner
      puts "#{winner.name} won!"
      winner.score += 1
    else
      puts "It's a tie!"
    end
  end

  def display_moves
    puts "#{human.name} chose #{human.move.class}"
    puts "#{computer.name} chose #{computer.move.class}"
  end

  def display_score
    puts "Score:"
    puts "#{human.name}: #{human.score}"
    puts "#{computer.name}: #{computer.score}"
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include? answer.downcase
      puts "Sorry, must be y or n."
    end

    answer.downcase == 'y' ? (return true) : (return false)
  end

  def display_grand_winner
    winner = human.score > computer.score ? human : computer
    puts "#{winner.name} is the grand winner!"\
         " They were the first to #{SCORE_TO_WIN}!"
  end

  def display_history
    header = ['', 'Rock', 'Paper', 'Scissors', 'Lizard', 'Spock']
    human_history = [human.name] + human.history.values
    comp_history = [computer.name] + computer.history.values

    puts "History of moves:"
    puts Terminal::Table.new(
      rows: [human_history, comp_history],
      headings: header
    )
  end

  def grand_winner?
    human.score >= SCORE_TO_WIN || computer.score >= SCORE_TO_WIN
  end

  def play_round
    loop do
      human.choose
      computer.choose
      display_moves
      display_winner
      display_score
      break if grand_winner? || !play_again?
    end
  end

  def play
    display_welcome_message
    play_round
    display_grand_winner if grand_winner?
    display_history
    display_goodbye_message
  end
end

RPSGame.new.play
