=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

--------------------------PROBLEM----------------------------------------

Input: string (with at least one character)

Output: hash with three entries (lowercase, uppercase, neither) and percentages for values

---------------------------RULES-----------------------------------------
Explicit: 

Implicit: list the key with a value of zero if there are none of that category
          spaces count as neither
          round to a certain number of digit?

--------------------------EXAMPLES---------------------------------------


----------------------------ALGO----------------------------------------

def a method that takes one string as an arg
  create the hash with three keys and default values of zero
  separate the string into characters
  iterate through the characters
    increment the respective hash if that character falls into that category
  transform the values of the hash to be equal to counter over the size of input string
=end

require 'pry'

def letter_percentages(text)
  percent = {lowercase: 0, uppercase: 0, neither: 0}

  # percent[:lowercase] = text.chars.count { |char| char =~ /[a-z]/} 

  text.chars.each do |char|
    case
    when ('a'..'z').include?(char)
      percent[:lowercase] += 1
    when ('A'..'Z').include?(char)
      percent[:uppercase] += 1
    else
      percent[:neither] += 1
    end
  end
  percent.each do |k, v|
    percent[k] = (v.to_f / text.size * 100).round(2)
  end
  percent
end

p letter_percentages('abCdef 123') #== { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef')# == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123')# == { lowercase: 0, uppercase: 0, neither: 100 }