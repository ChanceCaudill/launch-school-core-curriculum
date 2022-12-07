=begin
In this assignment, we'll build a Rock Paper Scissors game.
The game flow should go like this:

the user makes a choice
the computer makes a choice
the winner is displayed
=end

# Section 1: Necessary methods and CONSTANT variables.
VALID_CHOICES = %w(rock paper scissors spock lizard)
CHOICES_MESSAGE = <<-MSG
Start the game by choosing one of the following:
#{VALID_CHOICES.join(', ')}
For short, you can choose "r" for rock, 
"p" for paper, "sc" for scissors, "sp" 
for spock, and "l" for lizard.
MSG

def short_choices(choice)
  if choice.downcase.start_with?('r')
    'rock'
  elsif choice.downcase.start_with?('p')
    'paper'
  elsif choice.downcase.start_with?('sc')
    'scissors'
  elsif choice.downcase.start_with?('sp')
    'spock'
  elsif choice.downcase.start_with?('l')
    'lizard'
  end
end

def prompt(message)
  puts "==> #{message}"
end

def game_rules(first, move1, second, move2, move3)
  (first == move1 && (second == move2 || second == move3))
end

def win?(first, second)
  game_rules(first, 'rock', second, 'scissors', 'lizard') ||
    game_rules(first, 'paper', second, 'rock', 'spock') ||
    game_rules(first, 'scissors', second, 'paper', 'lizard') ||
    game_rules(first, 'spock', second, 'scissors', 'rock') ||
    game_rules(first, 'lizard', second, 'paper', 'spock')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def keep_score(player, computer, score)
  if win?(player, computer)
    score[0] = score[0] + 1
  elsif win?(computer, player)
    score[1] = score[1] + 1
  end
end
# End section 1

# Section 2: Playing the game.
loop do # main loop
  score = [0, 0]
  choice = ''
  prompt(CHOICES_MESSAGE)
  loop do
    loop do
      prompt("Your score: #{score[0]} Computer score: #{score[1]}")
      prompt("Make your choice.")
      choice = gets.chomp

      if VALID_CHOICES.include?(choice) || short_choices(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{short_choices(choice)};
    Computer chose: #{computer_choice}")

    display_results(short_choices(choice), computer_choice)

    keep_score(short_choices(choice), computer_choice, score)

    break if score[0] == 3 || score[1] == 3
  end

  prompt("FINAL SCORE. You: #{score[0]} Computer: #{score[1]}")
  prompt("Do you want to play again? Enter yes or no.")

  answer = ''
  loop do
    answer = gets.chomp
    if answer.downcase == 'yes' || answer.downcase == 'no'
      break
    else
      prompt("Error: Please enter yes or no.")
    end
  end

  system('clear')
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good bye!")
