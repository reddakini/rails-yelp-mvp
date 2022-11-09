class Review < ApplicationRecord
  # A review must belong to a restaurant.
  belongs_to :restaurant
  # A review must have a content.
  validates :content, presence: true
  # A review must have a rating.
  # A review’s rating must be a number between 0 and 5.
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: (0..5).to_a }
end
