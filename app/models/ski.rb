class Ski < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :ski_tags, dependent: :destroy
  has_many :tags, through: :ski_tags
end