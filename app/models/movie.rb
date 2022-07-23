class Movie < ApplicationRecord

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :meals, dependent: :destroy
  accepts_nested_attributes_for :meals, allow_destroy: true
  has_one_attached :image
  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true

  def get_image
    if image.attached?
      image
    else
      'no_image.jpg'
    end
  end

  def meal_by?(user)
    meals.exists?(user_id: user.id)
  end
end
