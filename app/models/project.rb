class Project < ApplicationRecord
  has_many :project_tasks
  has_many :tasks, through: :project_tasks

  has_many :project_tasks
  has_many :users, through: :project_tasks

  has_many :project_votes
  has_many :users, through: :project_votes

  has_many :project_votes
  has_many :votes, through: :project_votes
end
