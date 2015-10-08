class CauruselImage < ActiveRecord::Base
  mount_uploader :img, ImageUploader
end
