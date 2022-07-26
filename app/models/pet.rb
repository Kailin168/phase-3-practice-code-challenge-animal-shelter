class Pet < ActiveRecord::Base
  belongs_to :shelter
  has_many :adopters, through: :shelter

  Pet.oldest
  Pet.max

  Pet.average_age
  pet.sum/pet.count

  

end
