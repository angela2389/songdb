class Artist < ApplicationRecord
  has_many :songs
  mount_uploader :image, ImageUploader
end
