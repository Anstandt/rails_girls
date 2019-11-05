class Idea < ApplicationRecord
  validates :name, presence: true
  has_many :comments
  mount_uploader :picture, PictureUploader
end
