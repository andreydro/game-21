puts "Game starts"

user_value_1 = rand(6..11)
user_value_2 = rand(2..4)
user_score = user_value_1 + user_value_2

puts "You get 2 cards: #{user_value_1} and #{user_value_2}"
puts "Your final score: #{user_score}"

croupier_value_1 = rand(6..11)
croupier_value_2 = rand(2..4)
croupier_score = croupier_value_1 + croupier_value_2

puts "Croupier also gets 2 cards: #{croupier_value_1} and #{croupier_value_2}"
puts "He`s final score is: #{croupier_score}"

puts "Do you want take one more card?"
user_answer = gets.chomp

if user_answer == "yes"
  user_value_3 = rand(2..4)
  puts "Your card is: #{user_value_3}"
  user_score += user_value_3
  puts "Your final score: #{user_score} "
end

puts "Does croupier take one more card?"
croupier_answer = rand(1..2)

if croupier_answer == 1
  croupier_value_3 = rand(2..4)
  puts "Croupier card is: #{croupier_value_3}"
  croupier_score += croupier_value_3
  puts "Croupier final score: #{croupier_score}"
end

if user_score > croupier_score
  puts "Your final score: #{user_score}"
  puts "Croupier`s final score: #{croupier_score}"
  puts "You won"
else
  puts "Your final score: #{user_score}"
  puts "Croupier`s final score: #{croupier_score}"
  puts "You lose"
end
