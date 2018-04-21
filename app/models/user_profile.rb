class UserProfile < ApplicationRecord
  belongs_to :profile
  belongs_to :user
end
