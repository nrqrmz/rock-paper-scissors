# pseudo-code
# Coumputer randomly chooses a hand
# Choice a valid hand within [rock|paper|scissors]
# Comper my hand against computer hand

hands = %w[rock paper scissors]
results = ["It's a tie!", "You lose!", "You win!"]

index = rand(3)
computer_hand = hands[index]
running = true

while running # while true
  user_hand = nil

  until user_hand == 'rock' || user_hand == 'paper' || user_hand == 'scissors'
    puts "Please type a valid hand [#{hands.join('|')}]"
    print '> '
    user_hand = gets.chomp
  end

  puts "The computer hand is: #{computer_hand}"
  puts "#{results[hands.index(computer_hand) - hands.index(user_hand)]}"

  puts
  puts "Do you want to play again? (type y for yes)"
  print '> '
  user_input = gets.chomp

  running = false unless user_input == 'y'
end


# if (user_hand == 'rock' && computer_hand == 'scissors') || (user_hand == 'scissors' && computer_hand == 'paper') || (user_hand == 'paper' && computer_hand == 'rock')
#   puts "You win!"
# elsif user_hand == computer_hand
#   puts "It's a tie!"
# else
#   puts "You lose!"
# end
