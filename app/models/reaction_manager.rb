class ReactionManager < ApplicationRecord
  belongs_to :comment, optional: true
  belongs_to :user
  belongs_to :reaction, optional: true
  belongs_to :project, optional: true
  belongs_to :course, optional: true
  belongs_to :article, optional: true
end
