class House < ActiveRecord::Base
  has_many :students

  validates :name, uniqueness: true

end
