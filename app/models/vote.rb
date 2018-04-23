class Vote < ApplicationRecord
  has_many :project_votes
  has_many :users, through: :project_votes

  has_many :project_votes
  has_many :projects, through: :project_votes
end
