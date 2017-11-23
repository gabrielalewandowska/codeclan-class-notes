secret_number = 7

puts "Guess my number"

guess = gets.to_i

while guess != secret_number do
  if guess < secret_number
    puts "It's more than that!"
  else
    puts "It's less than that!"
  end

#  puts "Nope, try again"
  guess = gets.to_i
end

puts "Yay! It was  #{secret_number}"
