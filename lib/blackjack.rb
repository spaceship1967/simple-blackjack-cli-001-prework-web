def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  #outputs a random number between 0-11
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
  #if user_input is the same as "h" they get a card, and it iterates(+=), which means they can do this repeatedly
card += deal_card

elsif user_input == "s"
  #If they enter "s" for stay, then it returns the value of their card
 card

 else
   #if they enter nothing or a letter other than "s" or "h" the computer tells them this is an invalid_command (it calls that method)
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
#What you're doing here is calling all the previously defined methods in a sequence
#RULES + PLAY = GAME
def runner
  welcome
  card = hit?(initial_round)
  #This word until is a looping word. It refers to time and state. Psuedocode: Until the value of their card is greater than 21
  until card > 21
    #Show the value of the card. Call that method
    display_card_total(card)
    #Keep iterating, giving them cards
    card += hit?(deal_card)
    #When the player hits 21, the game is ovah.
  end
    display_card_total(card)
    end_game(card)
    #(card) is the argument. Must be there because it's part of the def
end
