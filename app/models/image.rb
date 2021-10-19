# == Schema Information
#
# Table name: images
#
#  id         :bigint(8)        not null, primary key
#  crop_h     :integer
#  crop_w     :integer
#  crop_x     :integer
#  crop_y     :integer
#  src        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Image < ApplicationRecord
  mount_uploader :src, ImageUploader

  # update
  def update_img(old_img)
    self.src = old_img.src
  end
end
