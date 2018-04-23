class ReactionManager < ApplicationRecord
  belongs_to :comment
  belongs_to :user
  belongs_to :reaction
  belongs_to :project
  belongs_to :course
  belongs_to :article
end
