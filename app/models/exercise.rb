class Exercise < ApplicationRecord
  belongs_to :user
  validates :duration_in_min, :workout, :workout_date, presence: true
end
