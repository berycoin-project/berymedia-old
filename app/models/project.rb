class Project < ApplicationRecord
  has_many :project_tasks
  has_many :tasks, through: :project_tasks

  has_many :project_tasks
  has_many :users, through: :project_tasks

  has_many :project_votes
  has_many :votes, through: :project_votes

  has_many :status_managers
  has_many :statuses, through: :status_managers

  has_many :status_managers
  has_many :articles, through: :status_managers

  has_many :status_managers
  has_many :courses, through: :status_managers

  has_many :comment_managers
  has_many :comments, through: :comment_managers
end
