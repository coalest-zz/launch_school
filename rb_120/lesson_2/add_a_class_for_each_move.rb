class Move
  VALUES = ['rock', 'paper', 'scissors', 'spock', 'lizard']
end

class Paper < Move
  def >(other_move)
    other_move.class == Rock ||
      other_move.class == Spock
  end

  def <(other_move)
    other_move.class == Scissors ||
      other_move.class == Lizard
  end

  def to_s
    self.class
  end
end

class Rock < Move
  def >(other_move)
    other_move.class == Scissors ||
      other_move.class == Lizard
  end

  def <(other_move)
    other_move.class == Paper ||
      other_move.class == Spock
  end
end

class Scissors < Move
  def >(other_move)
    other_move.class == Paper ||
      other_move.class == Lizard
  end

  def <(other_move)
    other_move.class == Rock ||
      other_move.class == Spock
  end
end

class Spock < Move
  def >(other_move)
    other_move.class == Rock ||
      other_move.class == Scissors
  end

  def <(other_move)
    other_move.class == Lizard ||
      other_move.class == Paper
  end
end

class Lizard < Move
  def >(other_move)
    other_move.class == Paper ||
      other_move.class == Spock
  end

  def <(other_move)
    other_move.class == Scissors ||
      other_move.class == Rock
  end
end

class Player
  attr_accessor :move, :name, :score

  def initialize
    @move = nil
    @score = 0
    set_name
  end

  def string_to_object(choice)
    self.move = case choice
                when 'rock'     then Rock.new
                when 'paper'    then Paper.new
                when 'scissors' then Scissors.new
                when 'lizard'   then Lizard.new
                when 'spock'    then Spock.new
                end
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
      break if Move::VALUES.include? choice
      puts "Sorry, invalid choice."
    end

    self.move = string_to_object(choice)
  end
end

class Computer < Player
  def set_name
    self.name = ['R2D2', 'Hal', 'Chappie', 'Sonny'].sample
  end

  def choose
    self.move = string_to_object(Move::VALUES.sample)
  end
end

class RPSGame
  SCORE_TO_WIN = 2

  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors!"
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors!"
  end

  def display_winner
    if human.move > computer.move
      puts "#{human.name} won!"
      human.score += 1
    elsif human.move < computer.move
      puts "#{computer.name} won!"
      computer.score += 1
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

  def grand_winner?
    human.score >= SCORE_TO_WIN || computer.score >= SCORE_TO_WIN
  end

  def play
    display_welcome_message
    loop do
      human.choose
      computer.choose
      display_moves
      display_winner
      display_score
      break if grand_winner? || !play_again?
    end
    display_grand_winner if grand_winner?
    display_goodbye_message
  end
end

RPSGame.new.play
