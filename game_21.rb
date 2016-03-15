puts "Game starts"

user_value_1 = rand(6..11)
user_value_2 = rand(2..4)
user_score = user_value_1 + user_value_2

croupier_value_1 = rand(6..11)
croupier_value_2 = rand(2..4)
croupier_score = croupier_value_1 + croupier_value_2

puts "Croupier gets 2 cards: #{croupier_value_1} and #{croupier_value_2}."
puts "He`s final score: #{croupier_score}"
puts "You get 2 cards: #{user_value_1} and #{user_value_2}. Final score: #{user_score}"

if user_score > croupier_score
  puts "You won"
else
  puts "You lose"
end
