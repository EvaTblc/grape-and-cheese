class Gift < ApplicationRecord
  before_save :format_date
  belongs_to :wine
  belongs_to :user

  validates :datepossession, presence: true


  def format_date
    self.datepossession = datepossession.strftime("%d/%m/%Y") if datepossession.present?
  end
end
