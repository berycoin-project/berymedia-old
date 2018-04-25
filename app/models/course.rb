class Course < ApplicationRecord
  has_many :status_managers
  has_many :statuses, through: :status_managers

  has_many :user_courses
  has_many :users, through: :user_courses

  has_many :article_managers
  has_many :projects, through: :article_managers

  has_many :article_managers
  has_many :articles, through: :article_managers

  has_many :comment_managers
  has_many :comments, through: :comment_managers

  has_many :category_managers
  has_many :categories, through: :category_managers

  has_many :reaction_managers
  has_many :reactions, through: :reaction_managers
end
