class Spot < ApplicationRecord
  belongs_to :user
  belongs_to :review
  belongs_to :event
end
