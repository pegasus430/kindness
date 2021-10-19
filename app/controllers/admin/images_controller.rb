class Admin::ImagesController < Admin::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update]

  def create
    img = Image.new(:src    => params[:file],
                    :crop_x => 0,
                    :crop_y => 0,
                    :crop_w => params[:w],
                    :crop_h => params[:h])

    img.save
    img.src.recreate_versions! unless img.nil?
    img.src.cache_stored_file!
    render json: img
  end

  def update
    img = Image.find(params[:id])
    if img.update(update_params)     
      img.src.recreate_versions!(:crop) 
      img.src.cache_stored_file!
      img.reload      
      render json: img
    else
      render json: { :data => "error" }
    end
  end

  private
  def update_params
    params.permit(:id, :crop_x, :crop_y, :crop_w, :crop_h)
  end
end
