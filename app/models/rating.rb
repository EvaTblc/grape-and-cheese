class Rating < ApplicationRecord
  belongs_to :wine
  belongs_to :user

  def evaluation
    if self.votes <= 1
      "⭐"
    elsif self.votes == 2
      "⭐⭐"
    elsif self.votes == 3
      "⭐⭐⭐"
    elsif self.votes == 4
      "⭐⭐⭐⭐"
    elsif self.votes == 5
      "⭐⭐⭐⭐⭐"
    end
  end
end
