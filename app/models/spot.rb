# == Schema Information
#
# Table name: spots
#
#  id         :bigint(8)        not null, primary key
#  image_ids  :integer          default([]), is an Array
#  tags       :string           default([]), is an Array
#  tel        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  store_id   :integer
#

class Spot < ApplicationRecord
  extend Mobility
  include Imagesable
  belongs_to :store
  translates :title, type: :string, locale_accessors: [:en, :'zh-TW'] 
  translates :service_hours, type: :string, locale_accessors: [:en, :'zh-TW'] 
  translates :address, type: :string, locale_accessors: [:en, :'zh-TW']  
  translates :tel, type: :string, locale_accessors: [:en, :'zh-TW']  
end
