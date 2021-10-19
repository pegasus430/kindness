# == Schema Information
#
# Table name: rooms
#
#  id              :bigint(8)        not null, primary key
#  cover           :string
#  cover_image_ids :integer          default([]), is an Array
#  desc            :string
#  equipment       :string
#  hash_data       :string           default({"equipment_left_zh_tw"=>[], "equipment_left_en"=>[], "equipment_right_zh_tw"=>[], "equipment_right_en"=>[]})
#  image_ids       :integer          default([]), is an Array
#  seq             :integer
#  spec            :string
#  title           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  store_id        :integer
#

class Room < ApplicationRecord
  extend Mobility
  include Imagesable

  attr_accessor :cover_images

  translates :title, type: :string, locale_accessors: [:"zh-TW", :en]
  translates :desc, type: :text, locale_accessors: [:"zh-TW", :en]
  translates :spec, type: :text, locale_accessors: [:"zh-TW", :en]
  translates :equipment, type: :text, locale_accessors: [:"zh-TW", :en]

  has_many :roomspots, class_name: 'Roomspot' 
  has_many :spots, through: :roomspots
  belongs_to :store
  default_scope { order(seq: 'asc') }


  typed_store :hash_data do |s|
    s.string :equipment_left_zh_tw, array: true, default: [], null: true
    s.string :equipment_left_en, array: true, default: [], null: true
    s.string :equipment_right_zh_tw, array: true, default: [], null: true
    s.string :equipment_right_en, array: true, default: [], null: true

  end

  def cover_images
    Image.where(id: self.cover_image_ids).order(Arel.sql("position(id::text in '#{self.cover_image_ids.join(',')}')"))
  end



  def main_image(type: :crop)
    if cover_images.size > 0
      "#{self.cover_images.first.src.url(type)}?s=#{self.updated_at.to_i.to_s}"
    else
      ""
    end
  end

end
