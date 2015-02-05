class Student < ActiveRecord::Base

  belongs_to :house

  validates :fname, presence: true
  validates :lname, presence: true

  def read_directions
    "Never!"
  end

  def full_name
    fname + " " + lname
  end

end
