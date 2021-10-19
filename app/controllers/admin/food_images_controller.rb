# frozen_string_literal: true

module Admin
  class FoodImagesController < Admin::BaseController

    before_action :find_food_images, only: [:edit, :update, :images]

    def edit; end

    def update
      @food_images.update(food_images_params) ? flash[:success] = "更新成功" : flash[:danger] = "更新失敗"
      redirect_to admin_food_index_path
    end

    def images
      render json: @food_images.images
    end


    private

    def find_food_images
      @food_images = Banner.where(image_type: 1).take
    end

    def food_images_params
      params.require(:food_images).permit(
        :image_ids=> []
      )
    end

  end
end
