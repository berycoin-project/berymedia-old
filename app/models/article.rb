class Article < ApplicationRecord
  has_many :status_managers
  has_many :statuses, through: :status_managers

  has_many :status_managers
  has_many :users, through: :status_managers

  has_many :status_managers
  has_many :projects, through: :status_managers

  has_many :status_managers
  has_many :courses, through: :status_managers
end
