class Post < ActiveRecord::Base
  has_many :post_comments, :dependent => :delete_all
  mount_uploader :img_1, ImageUploader
  mount_uploader :img_2, ImageUploader
end
