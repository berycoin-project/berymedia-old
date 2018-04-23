class ArticleManager < ApplicationRecord
  belongs_to :project
  belongs_to :article
  belongs_to :course
  belongs_to :user
end
