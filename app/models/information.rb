class Information < ApplicationRecord
  has_many :user_information
  has_many :users, through: :user_information
end
