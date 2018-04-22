class Profile < ApplicationRecord
  has_many :user_profiles
  has_many :users, through: :user_profiles

  has_many :profile_ranks
  has_many :ranks, through: :profile_ranks

  has_many :profile_skills
  has_many :skills, through: :profile_skills

  has_many :profile_contacts
  has_many :contacts, through: :profile_contacts

  has_many :profile_addresses
  has_many :addresses, through: :profile_addresses
end
