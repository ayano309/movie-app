class Likecomment < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  belongs_to :like
end
