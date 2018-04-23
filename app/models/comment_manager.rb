class CommentManager < ApplicationRecord
  belongs_to :project
  belongs_to :user
  belongs_to :article
  belongs_to :comment
  belongs_to :course
end
