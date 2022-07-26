class Shelter < ActiveRecord::Base
  has_many :pets
  has_many :adopters, through: :pets
  # has to be plural for all of them

  def current_pets
    self.pets.filter do |pet|
      if pet.adopted? == false
      return pet
      end
    end
  end


  def adopted_pets
    self.pets.where(adopted?: true)
    # only wants the pet that is already adopted/true
  end

end
# these are instance method when they want #current_pets
