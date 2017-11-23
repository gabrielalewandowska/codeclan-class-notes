def fib(n)
  return 1 if n < 3
  return fib(n - 1) + fib(n - 2)
end

question = 'Which Fibonacci number would you like to know?'
puts question
input = gets.chomp

while (input != 'quit')
  puts 'Thinking...'
  Thread.new do
    num_to_calc = input.to_i
    result = fib(num_to_calc)
    puts "Fibonacci number #{num_to_calc} is #{result}"
    end
    puts question
  input = gets.chomp
end
