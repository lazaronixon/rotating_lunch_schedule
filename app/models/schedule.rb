class Schedule < ApplicationRecord
  belongs_to :meal
  scope :chronologically, -> { order :served_at, :id }
end
