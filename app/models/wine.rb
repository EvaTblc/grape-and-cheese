class Wine < ApplicationRecord
  has_many :ratings
  has_many :gifts
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_wines,
    against: [:name, :vignoble, :year, :color],
    using: {
      tsearch: { prefix: true }
    }


  COLOR = ["Rouge", "Blanc", "Rosé"]
  validates :color, inclusion: { in: Wine::COLOR }

  # enum color_wine: ["Rouge", "Blanc", "Rosé"]

end
