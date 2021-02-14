# def buy_fruit(fruit_arr)
#   result = []
#   fruit_arr.each do |arr|
#     arr[1].times do |_|
#       result << arr[0]
#     end
#   end
#   result
# end

def buy_fruit(fruit_arr)
  result = []
  fruit_arr.each do |arr|
    arr[1].times { result << arr[0] }
  end
  result
end

# LS Solution:
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]