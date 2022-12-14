# Modify the method from the previous exercise so 
# it ignores non-alphabetic characters when determining 
# whether it should uppercase or lowercase each letter. 
# The non-alphabetic characters should still be included 
# in the return value; they just don't count when toggling the desired case.
ALPHABET = ('a'..'z')

def staggered_case(string)
  result = ''
  need_upcase = true

  string.chars.map do |char|
    if need_upcase
      result << char.upcase 
    else
      result << char.downcase
    end

    if ALPHABET.include?(char.downcase)
      need_upcase = !need_upcase
    else
      need_upcase
    end
  end
  
  result
end

# Examples
puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'