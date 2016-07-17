




def random_number
  rand(1..10)
end

def game_loop
  comp_guess = random_number
  puts "#{comp_guess}"

  user_guess = -1
  user_guesses = []

    while user_guess.to_i != comp_guess do
      puts "Enter a random number between 1 and 100"
      user_guess = gets.chomp
      user_guesses.push(user_guess)
      if user_guesses.size >= 5
        puts "You are out of guesses.  You guessed #{user_guesses}. The answer was #{comp_guess}."
        break
      end

      if user_guess.to_i == comp_guess
        puts "You won"
        break
      end
    end

end

game_loop
