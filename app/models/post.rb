class Post < ApplicationRecord
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }

  mount_uploader :image, ImageUploader

  belongs_to :user
end
