=begin
Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. 
You may assume that the argument is a valid integer value.

Keep in mind that you're not allowed to use #odd? or #even? in your solution.
=end
def is_odd?(int)
  int % 2 == 1
end

p is_odd?(3)
p is_odd?(4)
p is_odd?(0)
p is_odd?(-3)
p is_odd?(-2)