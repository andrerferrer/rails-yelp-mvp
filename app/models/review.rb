class Review < ApplicationRecord
  RATING = (0..5).to_a
  ATTRIBUTES = %i[content rating]

  belongs_to :restaurant
  # A review must have a parent restaurant.
  validates_presence_of :restaurant
  # A review must have content and a rating. The rating should be a number
  ## between 0 and 5.
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: RATING }
end
