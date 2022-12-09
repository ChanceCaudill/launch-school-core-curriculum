# Question 1
# In this hash of people and their age,

# Copy Code
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# see if "Spot" is present.

# Bonus: What are two other hash methods that would
# work just as well for this solution?
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
puts ages.key?('Spot')
puts ages.member?('Spot')
puts ages.include?('Spot')

# Question 2
#Starting with this string:

# Copy Code
# munsters_description = "The Munsters are creepy in a good way."
# Convert the string in the following ways 
# (code will be executed on original munsters_description above):

# Copy Code
# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# "The munsters are creepy in a good way."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description = "The Munsters are creepy in a good way."
puts munsters_description.swapcase
puts munsters_description.capitalize
puts munsters_description.downcase
puts munsters_description.upcase

# Question 3
# We have most of the Munster family in our age hash:

# Copy Code
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# add ages for Marilyn and Spot to the existing hash

# Copy Code
# additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)
p ages

# Question 4
# See if the name "Dino" appears in the string below:

# Copy Code
# advice = "Few things in life are as important as house training your pet dinosaur."
advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.include?('Dino')

# Question 5
# Show an easier way to write this array:

# Copy Code
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones

# Question 6
# How can we add the family pet "Dino" to our usual array:

# Copy Code
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << 'Dino'
# p flintstones

# Question 7
# In the previous practice problem we added Dino to our array like this:

# Copy Code
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"
# We could have used either Array#concat or Array#push to add Dino to the family.

# How can we add multiple items to our array? (Dino and Hoppy)
flintstones.push('Dino', 'Happy')
p flintstones

# Question 8
# Shorten the following sentence:

# Copy Code
# advice = "Few things in life are as important as house training your pet dinosaur."
# Review the String#slice! documentation, and use that method to make the 
# return value "Few things in life are as important as ". 
# But leave the advice variable as "house training your pet dinosaur.".
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice!(0, advice.index('house'))
p advice
# If we used string.slice the original variable would not be mutated.

# Question 9
# Write a one-liner to count the number of lower-case
# 't' characters in the following string:

# Copy Code
# statement = "The Flintstones Rock!"
statement = "The Flintstones Rock!"
puts statement.count('t')

# Question 10
# Back in the stone age (before CSS) we used spaces to
# align things on the screen. If we had a table of
# Flintstone family members that was forty characters in width,
# how could we easily center that title above the table with spaces?

# Copy Code
# title = "Flintstone Family Members"
title = "Flintstone Family Members"
puts title.center(40)