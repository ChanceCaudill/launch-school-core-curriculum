# A lot of the answers were done outside of this text editor.
# I keep track of them in notion.
# The problems that require coding solutions are below.

# Question 3
# Replace the word "important" with "urgent" in this string:

# Copy Code
# advice = "Few things in life are as important as house training your pet dinosaur."
advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!('important', 'urgent')
puts advice

# Question 4
# The Ruby Array class has several methods for removing items from the array.
# Two of them have very similar names. Let's see how they differ:
# What do the following method calls do
# (assume we reset numbers to the original array between method calls)?
# Copy Code
# numbers = [1, 2, 3, 4, 5]
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1) # this will remove index 1 which is 2 from the array.
p numbers
numbers = [1, 2, 3, 4, 5]
numbers.delete(1) # this will delete 1 from the array.
p numbers

# Question 5
# Programmatically determine if 42 lies between 10 and 100.

# hint: Use Ruby's range object in your solution.
puts (10..100).include?(42)

# Question 6
# Starting with the string:

# Copy Code
# famous_words = "seven years ago..."
# show two different ways to put the expected "Four score and " in front of it.
famous_words = "seven years ago..."
puts "Four score and #{famous_words}"
puts "Four score and " + famous_words

# Question 7
# If we build an array like this:

# Copy Code
# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]
# We will end up with this "nested" array:

# Copy Code
# ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
# Make this into an un-nested array.
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!
p flintstones

# Given the hash below

# Copy Code
# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# Turn this into an array containing only two elements: Barney's name and Barney's number
flintstones_2 = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones_2_a = flintstones_2.assoc('Barney')
p flintstones_2_a
