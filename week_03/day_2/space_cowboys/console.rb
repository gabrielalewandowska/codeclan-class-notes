require("pry-byebug")
require_relative("models/bounty")



bounty1 = Bounty.new({
  "name" => "chocolate",
  "value" => 100,
  "danger_level" => 5,
  "collected_by" => "Polly"
})

bounty2 = Bounty.new({
  "name" => "money",
  "value" => 200,
  "danger_level" => 7,
  "collected_by" => "Bobby"
})

bounty1.delete
bounty1.save
bounty2.save

binding.pry
nil
