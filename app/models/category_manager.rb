class CategoryManager < ApplicationRecord
  belongs_to :category
  belongs_to :article
  belongs_to :course
  belongs_to :user
  belongs_to :project
end
