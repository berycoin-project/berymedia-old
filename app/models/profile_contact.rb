class ProfileContact < ApplicationRecord
  belongs_to :contact
  belongs_to :profile
end
