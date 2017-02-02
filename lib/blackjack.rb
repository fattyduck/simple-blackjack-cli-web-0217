def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = 1 + rand(10)
end

def display_card_total(cards)
  # code #display_card_total here
  puts "Your cards add up to #{cards}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(cards)
  # code #end_game here
  puts "Sorry, you hit #{cards}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1+card2)
  card1 + card2
end

def hit?(cards)
  # code hit? here
  prompt_user
  input = get_user_input
  cards += deal_card if input == "h"
  cards
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  cards = initial_round
  while cards < 22
    cards = hit?(cards)
    display_card_total(cards)
  end
  end_game(cards)
end
