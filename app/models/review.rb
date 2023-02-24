class Review < ApplicationRecord
  RATINGS = [0, 1, 2, 3, 4, 5]
  belongs_to :experience
  belongs_to :user
  validates :comment, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: 0..5 }
end
