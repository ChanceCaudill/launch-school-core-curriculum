=begin
Build a command line calculator program that does the following:

1. asks for two numbers
2. asks for the type of operation to perform: add, subtract, multiply or divide
3. displays the result
=end
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def valid_number?(input)
  input.to_i.to_s == input
end

def number?(input)
  input.to_f.to_s == input
end

def operation_to_message(op)
  operation = case op
              when '1'
                'Adding'
              when '2'
                'Subtracting'
              when '3'
                'Multiplying'
              when '4'
                'Dividing'
              end
  operation
end

puts MESSAGES['welcome']
name = ''
loop do
  name = gets.chomp
  if name.empty?
    puts MESSAGES['valid_name']
  else
    break
  end
end

puts MESSAGES['hi'] + ' ' + "#{name}!"

loop do # main loop
  number1 = ''
  loop do
    puts MESSAGES['first_number']
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      puts MESSAGES['valid_number']
    end
  end

  number2 = ''
  loop do
    puts MESSAGES['second_number']
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      puts MESSAGES['valid_number']
    end
  end

  puts MESSAGES['pick_operator']

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      puts MESSAGES['valid_operator']
    end
  end

  puts "#{operation_to_message(operator)}" + " " + MESSAGES['operating']

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  puts MESSAGES['result'] + ' ' + "#{result}"

  puts MESSAGES['repeat']
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

puts MESSAGES['bye']
