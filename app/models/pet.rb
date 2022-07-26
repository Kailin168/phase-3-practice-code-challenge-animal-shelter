class Pet < ActiveRecord::Base
  belongs_to :shelter
  belongs_to :adopters

  def self.oldest
    self.all.maximum do |pet|
      pet.age
    end
  end  

  def self.average_age
    Pet.all.sum(:age)/Pet.all.count.to_f
  end

  def in_dog_years
    self.species.downcase == 'dog'? self.age * 5 : "Not a dog"
  end 

end
