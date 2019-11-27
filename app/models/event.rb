class Event < ApplicationRecord
  belongs_to :vibe
  has_many :spots
  has_many :attendants, through: :spots, source: :user
  belongs_to :user

  validates :start_time, inclusion: { in: (Date.today..Date.tomorrow) }
end
