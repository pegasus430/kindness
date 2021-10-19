module Imagesable
  extend ActiveSupport::Concern
  
  included do
    attr_accessor :images
  
    def images
      Image.where(id: self.image_ids).order(Arel.sql("position(id::text in '#{self.image_ids.join(',')}')"))
    end

    def cover(type: :crop)
      if images.size > 0
        "#{self.images.first.src.url(type)}?s=#{self.updated_at.to_i.to_s}"
      else
        ""
      end
    end
  end

end