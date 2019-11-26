class Event < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :vibe
  has_many :spots
  belongs_to :user
end
