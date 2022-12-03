# Build a program that displays when the user will retire and how many years she has to work till retirement.
require 'date'

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

years_until_retired = retirement_age - age

year = Date.today.year.to_i

retirement_year = years_until_retired + year

puts "It’s #{year}. You will retire in #{retirement_year}. You have only #{years_until_retired} years of work to go!"