require_relative('pet')

class PetShop

  def initialize (input_pets)
    @pets = input_pets
  end

  def pet_type(petname)
    @pets.find {|pet| pet.name == petname}.type
  end

  def get_names_of_all_pets_of_type(type)
     found = @pets.select {|pet| pet.type == type}
     found.map {|pet| pet.name}
  end

  def get_number_of_pets_costing_at_least(amount)
    @pets.select {|pet| pet.price >= amount}.count
  end
end
