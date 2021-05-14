=begin
-----------------------INSTRUCTIONS--------------------------------------
Your task in the kata is to determine how many boats are sunk damaged and
untouched from a set amount of attacks. You will need to create a function
that takes two arguments, the playing board and the attacks.

Boats are placed either horizontally, vertically or diagonally on the
board. 0 represents a space not occupied by a boat. Digits 1-3 represent
boats which vary in length 1-4 spaces long. There will always be at least
1 boat up to a maximum of 3 in any one game. Boat sizes and board
dimentions will vary from game to game.

--------------------------PROBLEM----------------------------------------
Input: 
1 nested array (the board)
1 nested array (for attacks) (0+ 2-element sub arrays)

Output: 
1 hash with 4 keys: `sunk`, `damaged`, `not_touched`, `points`, and values for each key
---------------------------RULES-----------------------------------------
Explicit: 
**Sunk or Damaged**
`sunk` = all boats that are sunk
`damaged` = all boats that have been hit at least once but not sunk
`notTouched/not_touched` = all boats that have not been hit at least once 

**Scoring**
1 point for every whole boat sank.
0.5 points for each boat hit at least once (not including boats that are sunk).
-1 point for each whole boat that was not hit at least once. 
Implicit: 

--------------------------EXAMPLES---------------------------------------
          #1 #2 #3 #4 #5 #6
board = [[0, 0, 0, 2, 2, 0], #4
         [0, 3, 0, 0, 0, 0], #3
         [0, 3, 0, 1, 0, 0], #2
         [0, 3, 0, 1, 0, 0]] #1



attacks = [[2, 1], [1, 3], [4, 2]]

attack [2,1] -> board[3][1]
attack [1,3] -> board[1][0]
attack [4,2] -> board[2][3]
attack [x,y] -> board[4 - y][x - 1]

----------------------------ALGO-----------------------------------------

initialize the return hash with the hash keys
find the boat(s) # [2,3] [2,2] [2,1]
iterate over the attacks
  iterate over the boats
    if one of the attacks is the same as one of the boat entries
      delete that entry from the boat
iterate over the boats again
  if a boat array is empty
    add 1 point for the boat being sunk plus to the score

  else
  compare the length of the boat array to the length of boat array at the beginning
    if new array length is smaller
      increment the damaged hash key once
      add the difference in length * 0.5 to the score
    if the new array is the same size
      ship wasn't get so increment the not_touched hash key
      reduce the score by -1
return the results hash


=end

def damaged_or_sunk(board, attacks)
  boats = find_boats(board)
  orig_boats = boats.map { |boat| boat.dup }
  attacks.each do |attack|
    boats.each { |boat| boat.delete(attack) }
  end
  results(boats, orig_boats)
end

def find_boats(board)
  boat_one, boat_two, boat_three = [], [], []
  board.each_with_index do |row, i|
    row.each_with_index do |value, j|
      case value
      when 1 then boat_one << [j + 1, 4 - i]
      when 2 then boat_two << [j + 1, 4 - i]
      when 3 then boat_three << [j + 1, 4 - i]
      end
    end
  end
  [boat_one, boat_two, boat_three]
end

def results(boats_after, boats_before)
  results = {'sunk' => 0, 'damaged' => 0,
    'not_touched' => 0, 'points' => 0}
  boats_after.each_with_index do |boat, index|
    case
    when boat.empty?
      results['sunk'] += 1
      results['points'] += 1
    when boat.count == boats_before[index].count
      results['not_touched'] += 1
      results['points'] -= 1
    else
      times_hit = boats_before[index].count - boat.count
      results['damaged'] += 1
      results['points'] += (times_hit * 0.5)
    end
  end
  results
end
          #1 #2 #3 #4 #5 #6
board = [[0, 0, 0, 2, 2, 0], #4
         [0, 3, 0, 0, 0, 0], #3
         [0, 3, 0, 1, 0, 0], #2
         [0, 3, 0, 1, 0, 0]] #1

attacks = [[2, 1], [1, 3], [4, 2], [4, 1]]

p damaged_or_sunk(board, attacks)
# { 'sunk': 0, 'damaged': 2 , 'not_touched': 1, 'points': 0 }