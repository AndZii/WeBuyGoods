require 'carrierwave/orm/activerecord'

class Product < ActiveRecord::Base
  mount_uploader :first_img, ImageUploader
  mount_uploader :second_img, ImageUploader
end
