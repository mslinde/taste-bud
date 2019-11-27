class Event < ApplicationRecord
  belongs_to :vibe
  has_many :spots, dependent: :destroy
  has_many :attendants, through: :spots, source: :user
  belongs_to :user
end
