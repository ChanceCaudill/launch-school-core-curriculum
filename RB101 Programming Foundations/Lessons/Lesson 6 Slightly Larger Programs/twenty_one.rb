require 'pry'

CARD_VALUES = {
                2 => 2,
                3 => 3,
                4 => 4,
                5 => 5,
                6 => 6,
                7 => 7,
                8 => 8,
                9 => 9,
                10 => 10,
                'Jack' => 10,
                'Queen' => 10,
                'King' => 10,
                'Ace' => [1, 11]
              }

def prompt(string)
  puts "=> #{string}"
end

def initialize_deck
  {
    hearts: CARD_VALUES,
    diamonds: CARD_VALUES,
    clubs: CARD_VALUES,
    spades: CARD_VALUES
  }
end

def deal_cards_to_player(cards)
  player_hand = []

  while player_hand.size < 2
    player_hand << cards.values[rand(0..3)].keys.sample
  end

  player_hand
end

def deal_cards_to_dealer(cards)
  dealer_hand = []

  while dealer_hand.size < 2
    dealer_hand << cards.values[rand(0..3)].keys.sample
  end

  dealer_hand
end

def display_player_cards(cards)
  last_card = cards[-1]
  puts "You have: #{cards[0..-2].join(', ')} and #{last_card}"
end

def display_dealer_cards(cards)
  puts "Dealer has: #{cards[0]} and unknown card"
end

def player_choice(choice, hand, cards)
  result = ''

  if choice.downcase == 'hit'
    hand << cards.values[rand(0..3)].keys.sample
    result = display_player_cards(hand)
  elsif choice.downcase == 'stay'
    result = display_player_cards(hand)
  else
    result = prompt "Invalid input: Please enter hit or stay"
  end

  result
end

def count_score(hand)
  value_array = []

  hand.each do |value|
    if (value == 'Ace') && (value_array.sum <= 10)
      value_array << 11
    elsif (value == 'Ace') && (value_array.sum > 10)
      value_array << 1
    else
      value_array << CARD_VALUES[value]
    end
  end

  ace_high_index = value_array.find_index(11)

  if value_array.sum > 21 && ace_high_index
    value_array[ace_high_index] = 1
  end

  value_array.sum
end

def dealer_show_cards(cards)
  last_card = cards[-1]
  puts "Dealer has: #{cards[0..-2].join(', ')} and #{last_card}"
end

def dealer_choice(hand, cards)
  result = ''

  if count_score(hand) < 17
    hand << cards.values[rand(0..3)].keys.sample
    result = dealer_show_cards(hand)
  else
    result = dealer_show_cards(hand)
  end

  result
end

def display_player_score(score)
  puts "Your score is #{score}."
end

def display_dealer_score(score)
  if score < 21
    puts "Dealer score is #{score}"
  elsif score == 21
    puts "Dealer hit 21."
  else
    puts "Dealer score is #{score}."
  end
end

def determine_winner(player_score, dealer_score)
  result = ''

  if (player_score > dealer_score) && (player_score <= 21)
    result = 'You won!'
  elsif dealer_score > 21
    result = 'You won!'
  elsif (player_score < dealer_score) && (dealer_score <= 21)
    result = 'Dealer won. :('
  elsif player_score == dealer_score
    result = "It's a tie."
  end

  prompt result
end

loop do # Main Game Loop
  deck = initialize_deck
  dealer_cards = deal_cards_to_dealer(deck)
  player_cards = deal_cards_to_player(deck)

  display_dealer_cards(dealer_cards)
  display_player_cards(player_cards)
  display_player_score(count_score(player_cards))

  loop do # Player Choice Loop
    prompt "Do you want to hit or stay?"
    player_answer = gets.chomp

    display_dealer_cards(dealer_cards)
    player_choice(player_answer, player_cards, deck)
    display_player_score(count_score(player_cards))

    break if player_answer == 'stay' || count_score(player_cards) >= 21
  end

  system 'clear'

  if count_score(player_cards) > 21
    dealer_show_cards(dealer_cards)
    display_dealer_score(count_score(dealer_cards))
    display_player_score(count_score(player_cards))
    prompt "You busted. Dealer wins :("
  else
    loop do # Dealer Choice Loop
      dealer_choice(dealer_cards, deck)

      break if count_score(dealer_cards) >= 17
    end

    display_dealer_score(count_score(dealer_cards))
    display_player_score(count_score(player_cards))
  end

  determine_winner(count_score(player_cards), count_score(dealer_cards)) unless count_score(player_cards) > 21

  prompt "Do you want to play again? Please enter yes or no."
  last_answer = gets.chomp.downcase

  system 'clear'
  break if last_answer == 'no'
end

system 'clear'
prompt "Thanks for playing!"
