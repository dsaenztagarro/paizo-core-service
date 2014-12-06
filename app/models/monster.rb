# Represents the tasks we want to save everytime we complete them
class Monster < ActiveRecord::Base
  validates :charisma, :constitution, :dexterity, :intelligence, :strength,
            :wisdom, numericality: true
  belongs_to :bestiary
end
