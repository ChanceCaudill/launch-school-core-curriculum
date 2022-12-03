=begin
Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.
=end
puts "==> Enter the length of the room in meters:"
length_meters = gets.chomp.to_f

puts "==> Enter the width of the room in meters:"
width_meters = gets.chomp.to_f

area_sq_meters = length_meters * width_meters
area_sq_feet = area_sq_meters * 10.7639

puts "The area of the room is #{area_sq_meters.round(2)} square meters (#{area_sq_feet.round(2)} square feet)."