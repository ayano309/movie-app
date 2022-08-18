class Like < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  has_many :likecomments,dependent: :destroy
end
