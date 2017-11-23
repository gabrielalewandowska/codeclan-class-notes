# Guard Statement
score = 6

result = "fail"
result = "pass" if (score >= 6)

puts result

#Ternary

score = 6

result = (score >= 6) ? "pass" : "fail"
# action (condition) ? <contdition_true> : <condition_false>

puts result

# AND & OR
craig_hungry = true
craig_tired = true

puts "Craig is hangry" if (craig_hungry && craig_tired)

craig_tired = false

puts "Craig is grumpy" if (craig_tired || craig_hungry)
