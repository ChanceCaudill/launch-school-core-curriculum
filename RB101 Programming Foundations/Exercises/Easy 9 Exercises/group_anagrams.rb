# Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
# Write a program that prints out groups of words that are anagrams. 
# Anagrams are words that have the same exact letters in them but 
# in a different order. Your output should look something like this:
# Example Output
# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)

def anagrams(array)
  counter = 0
  final_arr = []

  loop do 
    result = []
    arr = [array[counter]]
    sorted_str = array[counter].chars.sort.join

    array.each do |word|
      if sorted_str == word.chars.sort.join
        result << word
      end
    end

    final_arr << result

    counter += 1
    break if counter == array.size
  end

  final_arr.uniq
end

p anagrams(words)
