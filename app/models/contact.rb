class Contact < ApplicationRecord
  has_many :profile_contacts
  has_many :profiles, through: :profile_contacts
end
