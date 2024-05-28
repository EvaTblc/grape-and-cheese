
class Gift < ApplicationRecord
  before_save :format_date
  has_many :usergifts
  belongs_to :wine
  belongs_to :user

  validates :datepossession, presence: true
  validates :quantity, numericality: {greater_than_or_equal_to: 1}


  def format_date
    self.datepossession = datepossession.strftime("%d/%m/%Y") if datepossession.present?
  end
end
