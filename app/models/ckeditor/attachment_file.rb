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

class Ckeditor::AttachmentFile < Ckeditor::Asset
  mount_uploader :data, CkeditorAttachmentFileUploader, mount_on: :data_file_name

  def url_thumb
    @url_thumb ||= Ckeditor::Utils.filethumb(filename)
  end
end
