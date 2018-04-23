class Course < ApplicationRecord
  has_many :status_managers
  has_many :statuses, through: :status_managers

  has_many :status_managers
  has_many :users, through: :status_managers

  has_many :status_managers
  has_many :projects, through: :status_managers

  has_many :status_managers
  has_many :articles, through: :status_managers

  has_many :comment_managers
  has_many :comments, through: :comment_managers

  has_many :article_managers

  has_many :category_managers
  has_many :categories, through: :category_managers
end
