class Wine < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  COLOR = ['Rouge', 'Blanc', 'Rosé']
  validates :color, inclusion: { in: Wine::COLOR }
end
