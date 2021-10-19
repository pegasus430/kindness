# == Schema Information
#
# Table name: pages
#
#  id          :bigint(8)        not null, primary key
#  description :string
#  keyword     :string
#  name        :string
#  path        :string
#  scope       :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Page < ApplicationRecord
end
