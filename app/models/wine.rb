class Wine < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_wines,
  against: [ :name ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

  COLOR = ["Rouge", "Blanc", "Rosé"]
  validates :color, inclusion: { in: Wine::COLOR }
end
