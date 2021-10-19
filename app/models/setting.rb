# == Schema Information
#
# Table name: settings
#
#  id         :bigint(8)        not null, primary key
#  hash_data  :string
#  og_image   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Setting < ApplicationRecord
  extend Mobility
  translates :title, type: :string, locale_accessors: [:"zh-TW", :en]
  translates :aboutus_name, type: :string, locale_accessors: [:"zh-TW", :en]
  translates :aboutus_description, type: :text, locale_accessors: [:"zh-TW", :en]
  translates :credit_cards, type: :text, locale_accessors: [:"zh-TW", :en]

  typed_store :hash_data do |s|  
    s.string :keyword, default: '', null: true
    s.string :designed, default: '', null: true
    s.string :description, default: '', null: true
    s.string :fb_url, default: '', null: true
    s.string :ig_url, default: '', null: true
    s.string :hr_url, default: '', null: true    
    s.string :ig_token, default: '842986798.decb9b5.da4a2948c82b4c188a4db9edb4fa31e6', null: true
    s.string :vimeo_token, default: '', null: true
    s.string :about_vimeo, default: '', null: true
    s.string :og_title, default: '', null: true
    s.string :og_description, default: '', null: true
    s.string :copyright,default: '', null: true
    s.string :easytravel_url,default: '', null: true
    s.string :booking_url,default: '', null: true
    s.string :tripadvisor_url,default: '', null: true
    s.string :tripadvisor_en_url,default: '', null: true
  end
end
