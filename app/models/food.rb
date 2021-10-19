# == Schema Information
#
# Table name: foods
#
#  id         :bigint(8)        not null, primary key
#  desc       :string
#  food_type  :integer          default("breakfast")
#  image_ids  :integer          default([]), is an Array
#  seq        :integer
#  sort       :integer
#  subtitle   :string
#  title      :string
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  store_id   :integer
#

class Food < ApplicationRecord
  extend Mobility
  include Imagesable
  translates :type, type: :string, locale_accessors: [:"zh-TW", :en] 
  translates :title, type: :string, locale_accessors: [:"zh-TW", :en] 
  translates :desc, type: :text, locale_accessors: [:"zh-TW", :en] 

  default_scope { order(seq: 'asc') }

  enum food_type: {
    breakfast: 0,
    snak_bar: 1,
    supper: 2,
    bar: 3
  }

  scope :breakfast, -> { where(food_type: 0)}
  scope :snak_bar, -> { where(food_type: 1)}
  scope :supper, -> { where(food_type: 2)}
  scope :bar, -> { where(food_type: 3)}

end
