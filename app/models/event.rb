class Event < ApplicationRecord
  has_one :vibe
  has_many :spots
  belongs_to :users
end
