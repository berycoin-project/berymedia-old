class User < ApplicationRecord

  has_many :user_information
  has_many :information, through: :user_information
  has_many :user_roles
  has_many :roles, through: :user_roles
  has_many :user_wallets
  has_many :wallets, through: :user_wallets

  has_many :profile_managers
  has_many :addresses, through: :profile_managers
  has_many :profile_managers
  has_many :ranks, through: :profile_managers
  has_many :profile_managers
  has_many :socials, through: :profile_managers
  has_many :profile_managers
  has_many :skills, through: :profile_managers
  has_many :profile_managers
  has_many :contacts, through: :profile_managers

  has_many :project_tasks
  has_many :projects, through: :project_tasks

  has_many :project_tasks
  has_many :tasks, through: :project_tasks

  has_many :project_votes
  has_many :votes, through: :project_votes

  has_many :status_managers
  has_many :statuses, through: :status_managers

  has_many :status_managers
  has_many :courses, through: :status_managers

  has_many :status_managers
  has_many :articles, through: :status_managers

  has_many :comment_managers
  has_many :comments, through: :comment_managers

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
