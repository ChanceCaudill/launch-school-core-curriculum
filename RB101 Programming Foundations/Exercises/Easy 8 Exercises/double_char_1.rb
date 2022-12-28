# Write a method that takes a string, and returns a 
# new string in which every character is doubled.
def repeater(string)
  arr = string.chars

  arr.map! do |char|
    char * 2
  end

  arr.join
end

# Examples:
p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''