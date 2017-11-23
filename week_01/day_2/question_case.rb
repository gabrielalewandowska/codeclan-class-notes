puts "What is your score?"
score = gets.chomp.to_i

case (score)
  when 10
    puts "Genius!"
  when 7..9
    puts "Very good"
  when 5..6
    puts "Satisfactory!"
  when 1..4
    puts "Failed!"
end