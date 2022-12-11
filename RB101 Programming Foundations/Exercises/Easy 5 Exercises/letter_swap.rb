=begin
Given a string of words separated by spaces, write a method 
that takes this string of words and returns a string in which 
the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, 
and that the string will always contain at least one word. 
You may also assume that each string contains nothing but words and spaces/
=end

def swap(string)
  arr = string.split(' ')

  new_arr = arr.map do |i|
    first_char = i[0]

    step_1 = i.sub(i[0], i.reverse[0])
    step_2 =  step_1.reverse
    step_3 = step_2.sub(step_2[0], first_char)
    final_str = step_3.reverse
    final_str
  end

  new_arr.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
