class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  has_many :ratings
  has_many :gifts
  has_many :usergifts, foreign_key: :gifter_id
  has_one_attached :avatar

  include PgSearch::Model
    pg_search_scope :search_by_first_and_last,
      against: [:first_name, :last_name],
      using: {
        tsearch: { prefix: true }
      }
end
