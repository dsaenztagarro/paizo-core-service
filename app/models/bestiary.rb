# Represents a book of monsters
class Bestiary < ActiveRecord::Base
  validates :name, presence: true
  has_many :monsters
end
