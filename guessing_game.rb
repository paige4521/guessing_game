#pick random number 1 - 100
#compare user input to computer generated random number
#Keep tally of guesses
#after 5 incorrect guess, Print you lose, program ends
#must include at least two methods
#compare numbers guessed to previous numbers guessed. If numbers repeat,
#ask user if Alzheimers is in the future.
user_response = "Y"
#Track the number of guesses the player has guessed
numb_guesses = 0
#Computer picks a random number
comp_pick_num = rand(1..100)
#Keeps track of all of the users guesses in an array.
user_guesses = []
#Gets user's name
user_name = " "
#Keep track of number of user_guesses
user_guesses_tally = 0
#tracks if the user has guessed the correct number
correct_guess = false

def is_y_n_q?(inp)
       inp == 'Y' || inp == 'y' || inp == 'N' || inp == 'n' ||  inp == 'Q' || inp == 'q'
end

puts "Please enter your name."
user_name = gets.chomp
puts "Hi #{user_name}.  Would you like to play the guessing game?  If so, please enter Y for Yes or N for No"
user_response = gets.chomp

while !(is_y_n_q?(user_response)) do
       puts 'not a valid entry, enter again!!!'
       user_response = gets.chomp
end


def is_number?(user_guesses)
    user_guesses.to_i.to_s == user_guesses
end



 #Verify if user wants to play the game.
if ( user_response.downcase == 'y'  ||   user_response.downcase == 'Y' )
  puts " Great!  #{user_name}, We are going to have so much fun with this game. I have selected a number between 1 - 100.  The objective /n is for you to guess the number within #{numb_guesses} guesses.  Let's get started. Please enter your first guess now: "
  loop do
    user_guess = gets.chomp
    while !(is_number?(user_guess)) do
    puts 'not a valid number, enter again!!!'
    user_guess = gets.chomp


    user_guess = user_guess.to_i
    # at this point we have valid integer because loop won't let the user pass this point unless he #  enters a valid integer


    user_guesses_tally = user_guesses_tally + 1
    user_guesses.push(user_guess)

    # user_guesses.last

    if user_guess == comp_pick_num
      puts "You are incredible! You have guessed my number of #{comp_pick_num}"
      puts "You guessed #{user_guesses}"
      break
      # add the lose condition . address if they get it right too before guess 5
    elsif  user_guess < comp_pick_num
      puts "You have guessed too low"
    elsif user_guess > comp_pick_num
      puts "You have guessed too high.  Guess again"
    end
  end

end



elsif ( user_response.downcase == 'n')
  puts "You have indicated you do not wish to play the guessing game. The game knows you do not wish to play and therefore
  no longer has to guess your intentions.  If you change your mind, you are on your own, as I am not goign to tell
  you how to restart the game. It has a lot to do with the fact that I don't think I myself know how to reloop this.
    I am off to play with someone who enjoys the unknown. Bye for now"
    #ask the user to renter their response.  Need to loop back
else
  puts "You have entered a key that is neither Y or N. Please enter a proper response"
  #I still need to test the vailidity of the input and repeat the test.  Method?  How do I do this?
end
