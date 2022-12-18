# Write a method that takes a positive integer, n, 
# as an argument, and displays a right triangle whose 
# sides each have n stars. The hypotenuse of the triangle 
# (the diagonal side in the images below) should have one 
# end at the lower-left of the triangle, and the other end 
# at the upper-right.
def triangle(number)
  count_spaces = number - 1
  count_stars = 1
  star = "*"
  space = " "

  loop do
    puts "#{space * count_spaces}#{star * count_stars}"
    count_spaces -= 1
    count_stars += 1
    break if count_spaces < 0
  end
end

# Examples
triangle(5)

#     *
#    **
#   ***
#  ****
# *****

triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********