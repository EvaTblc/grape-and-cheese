class Usergift < ApplicationRecord
  belongs_to :gift
  belongs_to :gifter, class_name: "User"
end
  