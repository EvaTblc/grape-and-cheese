class Wine < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  COLOR = ['Rouge', 'Blanc', 'Rosé']
  validates :color, inclusion: { in: Wine::COLOR }

  include PgSearch::Model
  pg_search_scope :search_by_wines,
    against: [:name, :vignole, :year, :color],
    using: {
      tsearch: { prefix: true }
    }
end
