class Article < ApplicationRecord
  has_many :status_managers
  has_many :statuses, through: :status_managers, dependent: :destroy

  has_many :article_managers
  has_many :users, through: :article_managers, dependent: :destroy

  has_many :article_managers
  has_many :projects, through: :article_managers, dependent: :destroy

  has_many :article_managers
  has_many :courses, through: :article_managers, dependent: :destroy

  has_many :comment_managers
  has_many :comments, through: :comment_managers, dependent: :destroy

  has_many :category_managers
  has_many :categories, through: :category_managers, dependent: :destroy

  has_many :reaction_managers
  has_many :reactions, through: :reaction_managers, dependent: :destroy
end
