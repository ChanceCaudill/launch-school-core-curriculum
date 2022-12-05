# Build a mortgage monthly payment calculator

# Section 1: Below is where we define our needed methods.
def monthly_pmt_calc(loan_amount, apr, duration_years)
  monthly_rate = (apr.to_f / 12) / 100
  duration_months = duration_years.to_f * 12

  (loan_amount.to_f * (monthly_rate /
  (1 - (1 + monthly_rate)**(-duration_months)))).round(2)
end

def prompt(str)
  puts "==> #{str}"
end

def valid_num?(input)
  input.to_f.to_s == input || input.to_i.to_s == input
end

=begin
Section 2: Below is where we get the user's input and process that
input to calculate the monthly payment.
=end
prompt("Hello! Welcome to the mortgage payment calculator.")

loop do # main loop
  loan_amount = ''
  loop do # Loop to catch errors if the input loan amount is not a number.
    prompt("What is your total loan amount?")
    loan_amount = gets.chomp
    if valid_num?(loan_amount)
      break
    else
      prompt("Error: Please enter a number.")
    end
  end

  prompt("What is your APR? APR is short for Annual Percentage Rate.")
  apr = ''
  loop do # Loop to catch errors if the input apr is not a number.
    apr = gets.chomp
    if valid_num?(apr)
      break
    else
      prompt("Error: Please enter a number.")
    end
    prompt("What is your APR?")
  end

  duration_years = ''
  loop do # Loop to catch errors if input loan duration is not a number.
    prompt("What is the length of your loan in years?")
    duration_years = gets.chomp
    if valid_num?(duration_years)
      break
    else
      prompt("Error: Please enter a number.")
    end
  end

  message = <<-MSG
  The required monthly payment to fully amortize the loan by the end of the
  loan's duration is: $#{monthly_pmt_calc(loan_amount, apr, duration_years)}.
  MSG

  puts message

  prompt("Would you like to calculate another mortgage payment?")
  prompt("If so, enter Yes.")

  answer = gets.chomp
  unless answer.downcase.start_with?('y')
    prompt("Have a great day!")
    break
  end
end
