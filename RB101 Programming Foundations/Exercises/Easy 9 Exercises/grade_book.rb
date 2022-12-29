# Write a method that determines the mean (average) of the 
# three scores passed to it, and returns the letter value 
# associated with that grade.

# Numerical Score Letter	Grade
# 90 <= score <= 100	'A'
# 80 <= score < 90	'B'
# 70 <= score < 80	'C'
# 60 <= score < 70	'D'
# 0 <= score < 60	'F'
# Tested values are all between 0 and 100. There is no need to 
# check for negative values or values greater than 100.
def get_grade(grade1, grade2, grade3)
  mean = (grade1 + grade2 + grade3) / 3
  grade = ''

  case
  when mean >= 0 && mean < 60
    grade << 'F'
  when mean >= 60 && mean < 70
    grade << 'D'
  when mean >= 70 && mean < 80
    grade << 'C'
  when mean >= 80 && mean < 90
    grade << 'B'
  when mean >= 90 && mean <= 100
    grade << 'A'
  end

  grade
end

# Example:
puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"