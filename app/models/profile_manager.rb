class ProfileManager < ApplicationRecord
  belongs_to :social
  belongs_to :address
  belongs_to :user
  belongs_to :contact
  belongs_to :rank
  belongs_to :skill
end
