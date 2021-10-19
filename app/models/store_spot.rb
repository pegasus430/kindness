# == Schema Information
#
# Table name: store_spots
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  spot_id    :integer
#  store_id   :integer
#

class StoreSpot < ApplicationRecord
  belongs_to :store
  belongs_to :spot
end
