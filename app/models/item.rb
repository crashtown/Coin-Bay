class Item < ApplicationRecord
  belongs_to :category
  belongs_to :shipping
  belongs_to :user
  scope(:search, -> (name) { where("LOWER(name) like ?", "%#{name.downcase}%")})
  mount_uploader :image, PostImageUploader
end
