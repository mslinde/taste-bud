class Review < ApplicationRecord
  belongs_to :event
  belongs_to :user
  belongs_to :spot
end
