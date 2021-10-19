# == Schema Information
#
# Table name: stores
#
#  id                :bigint(8)        not null, primary key
#  cover_image_ids   :integer          default([]), is an Array
#  display           :boolean          default(TRUE)
#  seq               :integer
#  traffic_image_ids :integer          default([]), is an Array
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  region_id         :bigint(8)
#
# Indexes
#
#  index_stores_on_region_id  (region_id)
#
# Foreign Keys
#
#  fk_rails_...  (region_id => regions.id)
#

class Store < ApplicationRecord
  belongs_to :region
  has_many :traffics, class_name: 'Traffic'
  has_many :rooms
  has_many :spots
  extend Mobility
  translates :title, type: :string, locale_accessors: [:en, :'zh-TW']
  translates :desc, type: :string, locale_accessors: [:en, :'zh-TW']
  translates :address, type: :string, locale_accessors: [:en, :'zh-TW']
  translates :reservation_information, type: :text, locale_accessors: [:"zh-TW", :en]
  translates :reservation_check_in_time, type: :text, locale_accessors: [:"zh-TW", :en]
  translates :reservation_contact_info, type: :text, locale_accessors: [:"zh-TW", :en]
  translates :credit_cards, type: :text, locale_accessors: [:"zh-TW", :en]

  attr_accessor :cover_images
  attr_accessor :traffic_images

  def cover_images(type: :crop)
     Image.where(id: self.cover_image_ids).order(Arel.sql("position(id::text in '#{self.cover_image_ids.join(',')}')"))
    # imgs.size > 0 ?  "#{imgs.first.src.url(type)}?s=#{self.updated_at.to_i.to_s}": ''
  end


  def cover(type: :crop)
    cover_images.size > 0 ?  "#{cover_images.first.src.url(type)}?s=#{self.updated_at.to_i.to_s}": ''
  end

  def traffic_images(type: :crop)
     Image.where(id: self.traffic_image_ids).order(Arel.sql("position(id::text in '#{self.cover_image_ids.join(',')}')"))
    # imgs.size > 0 ?  "#{imgs.first.src.url(type)}?s=#{self.updated_at.to_i.to_s}" : ''
  end

  def traffic(type: :crop)
     traffic_images.size > 0 ?  "#{traffic_images.first.src.url(type)}?s=#{self.updated_at.to_i.to_s}": ''
    # imgs.size > 0 ?  "#{imgs.first.src.url(type)}?s=#{self.updated_at.to_i.to_s}" : ''
  end


end
