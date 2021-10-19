# == Schema Information
#
# Table name: news
#
#  id          :bigint(8)        not null, primary key
#  image_ids   :integer          default([]), is an Array
#  public_date :date
#  top         :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class News < ApplicationRecord
  extend Mobility
  include Imagesable
  translates :title, type: :string, locale_accessors: [:en, :'zh-TW']
  translates :content, type: :string, locale_accessors: [:en, :'zh-TW']
  translates :description, type: :text, locale_accessors: [:en, :'zh-TW']

  def next
    News.where("id > ?", id).first
  end

  def prev
    News.where("id < ?", id).last
  end

end
