class Meal < ApplicationRecord
  has_many :schedules, dependent: :destroy
  scope :alphabetically, -> { order :title, :id }
end
