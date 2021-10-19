# == Schema Information
#
# Table name: banners
#
#  id                 :bigint(8)        not null, primary key
#  image_ids          :integer          default([]), is an Array
#  image_type         :string           default(NULL)
#  section1_image_ids :integer          default([]), is an Array
#  section2_image_ids :integer          default([]), is an Array
#  section3_image_ids :integer          default([]), is an Array
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Banner < ApplicationRecord
  extend Mobility
  include Imagesable
  translates :welcome_to_kindness_day_title, type: :text, locale_accessors: [:"zh-TW", :en]
  translates :welcome_to_kindness_day_subtitle, type: :text, locale_accessors: [:"zh-TW", :en]
  translates :welcome_to_kindness_day_description, type: :text, locale_accessors: [:"zh-TW", :en]
  translates :room_title, type: :text, locale_accessors: [:"zh-TW", :en]
  translates :room_description, type: :text, locale_accessors: [:"zh-TW", :en]

  attr_accessor :section1_images, :section2_images, :section3_images

  def section1_images
    Image.where(id: self.section1_image_ids).order(Arel.sql("position(id::text in '#{self.section1_image_ids.join(',')}')"))
  end

  def section2_images
    Image.where(id: self.section2_image_ids).order(Arel.sql("position(id::text in '#{self.section2_image_ids.join(',')}')"))
  end

  def section3_images
    Image.where(id: self.section3_image_ids).order(Arel.sql("position(id::text in '#{self.section3_image_ids.join(',')}')"))
  end

 

  enum image_type: {
    landing: 0,
    food: 1
  }

  scope :landing, -> { where(image_type: 0 )}
  scope :food, -> { where(image_type: 1 )}

end
