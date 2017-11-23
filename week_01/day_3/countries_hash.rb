countries = {
  uk: {
    capital: "London",
    population: 1_000_000
  },
  germany: {
    capital: "Berlin",
    population: 5_000_000
  }
}

puts countries[:germany][:population]


avengers = {

  hulk: {
    name: "Bruce Banner",
      attack_moves: {
        smash: 1000,
        roll: 500
      }
    },

  iron_man: {
    name: "Tony Stark",
      attack_moves: {
        punch: 10,
        kick: 100
      }
    }
  }


puts avengers[:hulk][:attack_moves][:smash] #1_000_000
puts avengers[:iron_man][:attack_moves][:kick] #100
