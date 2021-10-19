# == Schema Information
#
# Table name: ckeditor_assets
#
#  id                :bigint(8)        not null, primary key
#  data_content_type :string
#  data_file_name    :string           not null
#  data_file_size    :integer
#  height            :integer
#  type              :string(30)
#  width             :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_ckeditor_assets_on_type  (type)
#

class Ckeditor::Asset < ActiveRecord::Base
  include Ckeditor::Orm::ActiveRecord::AssetBase

  delegate :url, :current_path, :content_type, to: :data

  validates :data, presence: true
end
