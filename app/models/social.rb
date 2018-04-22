class Social < ApplicationRecord
  has_many :social_profiles
  has_many :profiles, through: :social_profiles
end
