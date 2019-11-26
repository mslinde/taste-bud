
class Event < ApplicationRecord
  belongs_to :vibe
  has_many :spots, dependent: :destroy
  belongs_to :user
end
