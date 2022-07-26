class Shelter < ActiveRecord::Base
  has_many :pets
  has_many :adopters through: :pets

  def current_pets
    self.pets.adopted?.map do |boolean|
      if self.pets.adopted? == false
      return self.pets
      end
    end
  end


  def adopted_pets
    self.pets.where(adopted?: true)
  end

end
