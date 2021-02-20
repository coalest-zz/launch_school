=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that returns the number of Friday the 13ths in the year
given by an argument. You may assume that the year is greater than 1752
(when the United Kingdom adopted the modern Gregorian Calendar) and that
it will remain in use for the foreseeable future.
--------------------------PROBLEM----------------------------------------

Input: integer (year after 1752)

Output: integer (number of friday the 13ths)

---------------------------RULES-----------------------------------------
Explicit: year will be greater than 1752

Implicit: 

--------------------------EXAMPLES---------------------------------------


----------------------------ALGO----------------------------------------

def a method that takes one integer for an arg
  initialize a counter num_fridays
  check the 13th of every month of the given year
    if a 13th lands on a friday
      increment num_fridays
    end
    return num_fridays
  end
end

=end

require 'date'

# def friday_13th(year)
#   thirteens = []
#   num_fridays = 0
#   12.times do |i|
#     thirteens[i] = "#{year}-#{i + 1}-13"
#     num_fridays += 1 if Date.parse(thirteens[i]).wday == 5
#   end
#   num_fridays
# end

# p friday_13th(2015) #== 3
# p friday_13th(1986) #== 1
# p friday_13th(2019) #== 2

# Further exploration:
# An interesting variation on this problem is to count the
# number months that have five Fridays. This one is harder
# than it sounds since you must account for leap years.

# ALGO
# initialize a counter
# iterate through a year, going through each month
#   check to see if the month has five Fridays
#     if it does, increment the counter
#   keep going for every month
# return counter
require 'pry'

def good_months(year)
  good_ones = 0

  12.times do |month|
    counter = 1
    fridays = 0
    loop do 
      break if !Date.valid_date?(year, month + 1, counter)
      fridays += 1 if Date.civil(year, month + 1, counter).wday == 5
      counter += 1
    end
    good_ones += 1 if fridays == 5
  end

  good_ones
end

p good_months(2021)
p good_months(2022)
p good_months(2023)
p good_months(2024)
p good_months(2025)
p good_months(2026)
p good_months(2027)
p good_months(2028)
p good_months(2029)