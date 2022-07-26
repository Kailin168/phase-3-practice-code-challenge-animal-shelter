class Adopter < ActiveRecord::Base
  has_many :pets
  has_many :pets, through :shelter  

def full_name
 "#{self.first_name} #{self.last_name}"
end

def adopt(pet)
  pet.update(adopted?: true, adopter_id: self.id)
 end
 
 def fav_pet
  
 end
 


end
