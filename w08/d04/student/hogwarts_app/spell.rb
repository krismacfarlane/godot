class Spell < ActiveRecord::Base

  has_and_belongs_to_many :students
  validates :name, uniqueness: true

end
