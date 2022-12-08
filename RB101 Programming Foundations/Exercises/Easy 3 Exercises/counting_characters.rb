# frozen_string_literal: true

# Write a program that will ask a user for an input of a word or
# multiple words and give back the number of characters.
# Spaces should not be counted as a character.
def character_count(phrase)
  phrase.gsub(' ', '').length
end

puts 'Please write a word or multiple words:'
words = gets.chomp

puts "There are #{character_count(words)} characters in #{words}."
