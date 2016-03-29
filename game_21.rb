puts "Game starts"

cards = [
  2, 3, 4, 6, 7, 8, 9, 10, 11
] * 4

cards.shuffle!

def get_top_card(cards)
  cards.pop
end

user_value_1 = get_top_card(cards)
user_value_2 = get_top_card(cards)
user_score = user_value_1 + user_value_2

puts "You get 2 cards: #{user_value_1} and #{user_value_2}"
puts "Your final score: #{user_score}"

croupier_value_1 = get_top_card(cards)
croupier_value_2 = get_top_card(cards)
croupier_score = croupier_value_1 + croupier_value_2

puts "Croupier also gets 2 cards: #{croupier_value_1} and #{croupier_value_2}"
puts "He`s final score is: #{croupier_score}"

while true
  puts "Do you want take one more card?"
  user_answer = gets.chomp

  if user_answer == "yes"
    user_value_3 = get_top_card(cards)
    puts "Your card is: #{user_value_3}"
    user_score += user_value_3
    puts "Your final score: #{user_score}"
  else
    break
  end
end

while true
  puts "Does croupier take one more card?"
  croupier_answer = rand(1..2)
  
  if croupier_score <= 21
    if croupier_answer == 1
      croupier_value_3 = get_top_card(cards)
      puts "Croupier card is: #{croupier_value_3}"
      croupier_score += croupier_value_3
      puts "Croupier final score: #{croupier_score}"
    else
      puts "No"
      break
    end
  else
    break
  end
end

if user_score <= 21
  if user_score > croupier_score
    puts "Your final score: #{user_score}"
    puts "Croupier`s final score: #{croupier_score}"
    puts "You won"
  else
    if croupier_score > 21
      puts "Your final score: #{user_score}"
      puts "Croupier`s final score: #{croupier_score}"
      puts "You won"
    else
      puts "Your final score: #{user_score}"
      puts "Croupier`s final score: #{croupier_score}"
      puts "You lose"
    end
  end
else
  puts "Your final score: #{user_score}"
  puts "Croupier`s finals score: #{croupier_score}"
  puts "You lose"
end
