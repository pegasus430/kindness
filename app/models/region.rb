# == Schema Information
#
# Table name: regions
#
#  id         :bigint(8)        not null, primary key
#  seq        :integer
#  title      :string
#  title_en   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Region < ApplicationRecord
  has_many :stories
end
