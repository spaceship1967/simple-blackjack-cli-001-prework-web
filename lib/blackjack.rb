def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = 1 + rand(11)
end

def display_card_total(card)
#accepts one argument, the card total
#prints the value of the cards to the screen
#does not hardcode the card total
  puts "Your cards add up to #{card}"
end

def prompt_user
#gives instructions for hitting or staying
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
#prints apology, card total, and thank you message
puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
#calls on #deal_card twice and returns the sum
#calls on the '#display_card_total' to print sum of cards
card = deal_card + deal_card
display_card_total(card)
card
end

def hit?(card)
# code hit? here
prompt_user
user_input = get_user_input

if user_input == "h"
card += deal_card

elsif user_input == "s"
 card

 else
 invalid_command
end
end


def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card = hit?(initial_round)
  until card > 21
    display_card_total(card)
    card += hit?(deal_card)
    end
    display_card_total(card)
    end_game(card)
end
