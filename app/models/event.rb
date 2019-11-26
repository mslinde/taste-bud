class Event < ApplicationRecord
  belongs_to :vibe
  has_many :spots
  belongs_to :user
end
