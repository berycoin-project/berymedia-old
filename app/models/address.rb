class Address < ApplicationRecord
  has_many :profile_addresses
  has_many :profiles, through: :profile_addresses
end
