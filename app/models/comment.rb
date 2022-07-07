class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  has_many :favorites, dependent: :destroy
  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
end
