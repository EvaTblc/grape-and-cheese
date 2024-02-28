class Wine < ApplicationRecord
  belongs_to :user

  COLOR = ['Rouge', 'Blanc', 'Rosé']
  validates :color, inclusion: { in: Wine::COLOR }
end
