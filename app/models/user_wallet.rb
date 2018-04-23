class UserWallet < ApplicationRecord
  belongs_to :wallet, optional: true
  belongs_to :user, optional: true
end
