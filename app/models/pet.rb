class Pet < ActiveRecord::Base
  belongs_to :shelter
  belongs_to :adopter 
  #(belongs to has to be singular)

  def self.oldest
    self.all.max_by do |pet|
      pet.age
    end
  end  

  # def self.oldest
  #   max_age=self.maximum(:age)
  #     self.find_by(age: max_age)
  #   end
  # end 

  # class method are when they say .oldest
  # to do class method on rake consol you should do 
  # Pet.oldest    ->    self.maximum(:age) -> this will just give you the highest age without the information of the pet. so you will need to self.find_by (age: (self.maximum(:age)))
  #

  def self.average_age
    Pet.all.sum(:age)/Pet.all.count.to_f
  end

  # def self.average_age
  #   self.average(:age).to_i
  # end

  def in_dog_years
    self.species.downcase == 'dog'? self.age * 5 : "Not a dog"
  end 

  # def in_dog_years
  #   if self.species.downcase == 'dog'
  #    self.age * 5 
  #   else 
  #     "Not a dog"
  #   end 
  # end 
# this is a isntance method so you have to call it on specific item

end
