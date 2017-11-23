puts "What year was Ruby born?"
year = gets.chomp.to_i

if (year == 1995)
  puts "Yay! That's right"
elsif (year == 1994 || year == 1996)
  puts "Close but not right."
else 
  puts "Wrong!"
end