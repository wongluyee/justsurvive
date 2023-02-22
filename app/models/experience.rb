class Experience < ApplicationRecord
  CATEGORY = ["City", "Island", "Desert", "Mountain", "Rainforest", "Arctic", "Grassland"]
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :title, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
