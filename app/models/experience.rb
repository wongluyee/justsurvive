class Experience < ApplicationRecord
  CATEGORY = ["City", "Island", "Desert", "Mountain", "Rainforest", "Arctic", "Grassland"]
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :title, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :category, inclusion: { in: CATEGORY }

  include PgSearch::Model
  pg_search_scope :search_by_tlcd,
    against: [ :title, :location, :category, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
