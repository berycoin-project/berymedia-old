class Information < ApplicationRecord
  has_many :user_informations
  has_many :users, through: :user_informations
end
