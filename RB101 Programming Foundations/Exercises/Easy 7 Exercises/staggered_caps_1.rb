# Write a method that takes a String as an argument, 
# and returns a new String that contains the original 
# value using a staggered capitalization scheme in which 
# every other character is capitalized, and the remaining 
# characters are lowercase. Characters that are not letters 
# should not be changed, but count as characters when switching 
# between upper and lowercase.
def staggered_case(string)
  arr = string.split("")
  counter = 0
  
  loop do
    if counter.even?
      arr[counter].upcase!
    else
      arr[counter].downcase!
    end

    counter += 1

    break if counter == arr.size
  end

  arr.join
end

# Examples
puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'