class User < ApplicationRecord

  has_many :user_informations
  has_many :informations, through: :user_informations

  has_many :user_roles
  has_many :roles, through: :user_roles

  has_many :user_wallets
  has_many :wallets, through: :user_wallets

  has_many :user_profiles
  has_many :profiles, through: :user_profiles

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
