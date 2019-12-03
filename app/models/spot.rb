class Spot < ApplicationRecord
  belongs_to :user
  has_one :review
  belongs_to :event
end
