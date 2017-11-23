def map(array)
  result = []
  for item in array
    result.push( yield(item))
  end
  return result
end

puts map( [2, 3, 4]) { |i|  i.to_f / 2}
puts map( ["blocks", "are", "cool"]) { |i|  i.capitalize}





# def each(array)
#   for element in array
#     puts yield(element)
#   end
# end
#
# each( [3, 6, 9, 8]) { |n| n * 2}
# each( ["blocks", "are", "cool"]) { |str| str.upcase}










# def each
#   numbers = [4, 9, 3, 1]
#   for number in numbers
#     puts yield(number)
#   end
# end
#
# each { |n| n * 2}












# def my_name
#   weather = "It's raining :("
#   puts "hello " + yield(weather, 3)
# end
#
# my_name { |weather, time| "Rick, " + weather + time.to_s + " o'clock"}
# my_name { |w| w + " Stewart"}
