class Image < ApplicationRecord
  mount_uploader :src, ImageUploader
  belongs_to :product
  
  # belongs_to :item, optional: true
  # mount_uploader :image_url, ImageUploader
end
