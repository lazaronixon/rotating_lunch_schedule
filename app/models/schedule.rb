class Schedule < ApplicationRecord
  belongs_to :meal
  scope :chronologically, -> { order :served_at, :id }

  def to_event
    { title: meal.title, start: served_at, end: served_at }
  end
end
