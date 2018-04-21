class Rank < ApplicationRecord
  has_many :profile_ranks
  has_many :profiles, through: :profile_ranks
end
