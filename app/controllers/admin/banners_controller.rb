# frozen_string_literal: true

module Admin
  class BannersController < Admin::BaseController

    before_action :find_banner, only: [:edit, :update, :destroy]

    def index
      @banners = Banner.landing
    end

    def new
      @banner = Banner.new
    end

    def edit; end

    def destroy
      @banner.destroy
      respond_with @banner, location: -> { admin_banners_path }
    end

    def update
      @banner.update(banner_params) ? flash[:success] = "更新成功" : flash[:danger] = "更新失敗"

      redirect_to edit_admin_banner_path(@banner)
    end

    def create
      @banner = Banner.new(banner_params)
      @banner.save
      redirect_to admin_banners_path
    end

    def images
      render json: Banner.find(params[:id]).images
    end


    def section1_images
      render json: Banner.find(params[:id]).section1_images
    end

    def section2_images
      render json: Banner.find(params[:id]).section2_images
    end

    def section3_images
      render json: Banner.find(params[:id]).section3_images
    end

    private

    def find_banner
      @banner = Banner.find(params[:id])
    end

    def banner_params
      params.require(:banners).permit(
        :aboutus_name_zh_tw, 
        :aboutus_name_en,
        :aboutus_description_zh_tw,
        :aboutus_description_en,
        :welcome_to_kindness_day_title_en,
        :welcome_to_kindness_day_subtitle_en,
        :welcome_to_kindness_day_description_en,
        :welcome_to_kindness_day_title_zh_tw,
        :welcome_to_kindness_day_subtitle_zh_tw,
        :welcome_to_kindness_day_description_zh_tw,
        :room_title_en,
        :room_title_zh_tw,
        :room_description_en,
        :room_description_zh_tw,
        :image_ids => [],
        :section1_image_ids => [],
        :section2_image_ids => [],
        :section3_image_ids => []
      )
    end

  end
end
