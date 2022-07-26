class Shelter < ActiveRecord::Base
  has_many :pets
  has_many :adopters through: :pets

  def current_pets
    self.pets.adopted?.map do |boolean|
    if self.adopted? == 1
    return self.pets.name
  end

  def adopted_pets
    self.pets.adopted?.map do |boolean|
      if self.adopted? == 0
      return self.pets.name
  end

end
