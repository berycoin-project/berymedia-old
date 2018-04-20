class UserInformation < ApplicationRecord
  belongs_to :information
  belongs_to :user
end
