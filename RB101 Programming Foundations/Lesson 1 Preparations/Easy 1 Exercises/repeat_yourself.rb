# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

def repeat(string, int)
  int > 0 ? int.times { puts string } : puts("Enter a number greater than 0.")
end

repeat('Hello, world!', 3)
repeat('Hello, world!', -3)
repeat('Hello, world!', 0)
repeat('Hello, world!', 1)