# # numbers = [2, 3, 4, 2, 1]
# #
# # total = 0
# #
# # for current_number in numbers
# #   puts current_number
# # end
# #
# # puts "total is: #{total}"
#
# # chickens = ["Margaret", "Hetty", "Henrietta", "Audrey", "Mabel"]
# #
# # for chicken in chickens
# #   puts chicken
# # end
#
#
# chickens_hashes = [
#   {name: "Margaret", age: 1, eggs: 2},
#   {name: "Hetty", age: 3, eggs: 3},
#   {name: "Mabel", age: 1, eggs: 4}
# ]
#
# for chicken in chickens_hashes
#   puts "#{chicken[:name]} is #{chicken[:age]}"
# end
#
# total_eggs = 0
#
# for egg_machine in chickens_hashes
#
#   if egg_machine[:eggs] > 0
#     puts "Yay, eggs!"
#   end
#
#   total_eggs += egg_machine[:eggs]
# end
#
# puts "#{total_eggs} eggs collected"

chickens_hashes = [
  {name: "Margaret", age: 1, eggs: 2},
  {name: "Hetty", age: 3, eggs: 3},
  {name: "Craig", age: 2, eggs: 0},
  {name: "Mabel", age: 1, eggs: 4},
  {name: "Daniel", age: 2, eggs: 0}
]

def find_lazy_chicken(chickens)
    lazy_chickens = []

    for chicken in chickens

      if chicken[:eggs] <= 0
        lazy_chickens.push(chicken[:name])
      end
    end

    return lazy_chickens
  end

puts find_lazy_chicken(chickens_hashes)
