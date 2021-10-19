# == Schema Information
#
# Table name: traffics
#
#  id         :bigint(8)        not null, primary key
#  seq        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  store_id   :integer
#

class Traffic < ApplicationRecord
  extend Mobility
  belongs_to :store
  translates :title, type: :string, locale_accessors: [:en, :'zh-TW'] 
  translates :description, type: :string, locale_accessors: [:en, :'zh-TW'] 

  default_scope { order(seq: 'asc') }
end
