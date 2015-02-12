class Event < ActiveRecord::Base

  belongs_to :venue
  belongs_to :band

  validates :date, presence: true

end
