print "What is the bill? "
bill = gets.to_f

print "What is the tip percentage? "
tip_percent = gets.to_f

tip = ((tip_percent / 100) * bill)
tip = format("%.2f", tip)
p tip

total = tip.to_f + bill
total = format("%.2f", total)

puts "\nThe tip is $#{tip}" 
puts "The total is $#{total}"

# Expected output:
# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.