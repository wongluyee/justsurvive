class Experience < ApplicationRecord
  CATEGORY = ["city", "island", "desert", "mountain", "jungle", "arctic", "grassland"]
  belongs_to :user
  has_many :bookings
  # validates :name, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
