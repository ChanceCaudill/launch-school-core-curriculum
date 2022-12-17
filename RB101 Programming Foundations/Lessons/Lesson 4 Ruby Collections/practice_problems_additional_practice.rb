# This file contains the problems from Practice Problems: Additional Practice
# from Lesson 4 Ruby Collectiions.

# Problem 1
# Given the array below
# Turn the array into a hash where the names are the keys and the values 
# are the positions in the array.
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = Hash.new

flintstones.each_with_index do |elem, idx|
  flintstones_hash[elem] = idx
end
puts flintstones_hash

# Problem 2
# Add up all of the ages from the Munster family hash:
ages = { "Herman" => 32, 
         "Lily" => 30, 
         "Grandpa" => 5843, 
         "Eddie" => 10, 
         "Marilyn" => 22, 
         "Spot" => 237 }

sum_of_ages = ages.values.sum
puts sum_of_ages

# Problem 3
# In the ages hash: remove people with age 100 and greater
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.delete_if do |key, value|
  value >= 100
end
puts ages

# Problem 4
# Pick out the minimum age from our current Munster family hash:
ages = { "Herman" => 32, 
         "Lily" => 30, 
         "Grandpa" => 5843, 
         "Eddie" => 10, 
         "Marilyn" => 22, 
         "Spot" => 237 }

puts ages.values.min

# Problem 5
# In the flinstones array: Find the index of the first
# name that starts with "Be"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts flintstones.find_index { |word| word.start_with?('Be') }

# Problem 6
# Write code that changes the array below so that all of the 
# names are shortened to just the first three characters. 
# Do not create a new array.
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts flintstones.map! { |word| word[0, 3] }

# Problem 7
# Create a hash that expresses the frequency 
# with which each letter occurs in this string:
statement = "The Flintstones Rock"
statement.gsub!(' ', '')

statement_arr = statement.chars
statement_hash = Hash.new

iterator = 0

loop do
  break if iterator > statement_arr.size
  statement_hash[statement_arr[iterator]] = statement_arr.count(statement_arr[iterator])
  iterator += 1
end
puts statement_hash

# Problem 8 was tested and answered in IRB and my notes that I keep on notion

# Problem 9 
# As we have seen previously we can use some built-in 
# string methods to change the case of a string. 
# A notably missing method is something provided in Rails, 
# but not in Ruby itself...titleize. This method in Ruby on 
# Rails creates a string that has each word capitalized as it 
# would be in a title.
words = "the flintstones rock"
puts words.split.map { |word| word.capitalize }.join(' ')

# Problem 10
# Given the hash below: Modify the hash such that each member of 
# the Munster family has an additional "age_group" key 
# that has one of three values describing the age group the 
# family member is in (kid, adult, or senior)
# Note: a kid is in the age range 0 - 17, an adult is 
# in the range 18 - 64 and a senior is aged 65+.
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def age_group(age)
  case
  when age >= 0 && age < 18
    return 'kid'
  when age >= 18 && age < 65
    return 'adult'
  when age > 64 
    return 'senior'
  end
end

modified_munsters = munsters.each_key do |key|
                                        munsters[key]['age_group'] = age_group(munsters[key]['age'])
                                      end

puts modified_munsters

