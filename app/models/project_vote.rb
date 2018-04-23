class ProjectVote < ApplicationRecord
  belongs_to :project
  belongs_to :user
  belongs_to :vote, optional: true
end
