class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  has_many :favorites, dependent: :destroy
  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end

  enum kao: { happy: 0, anger: 1, sad: 2, mujyou: 3 }

  def start_time
    created_at
  end
end
