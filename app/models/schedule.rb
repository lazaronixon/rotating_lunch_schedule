class Schedule < ApplicationRecord
  belongs_to :meal
  scope :chronologically, -> { order :day, :id }
end
