# frozen_string_literal: true

module Admin
  class FoodController < Admin::BaseController

    before_action :food_params, only: [:update, :destroy]
    before_action :find_food, only: [:edit, :update]

    def index
      @foods = Food.all
    end

    def new
      @food = Food.new
    end

    def edit
    end

    def destroy
      @food.destroy
      respond_with @food, location: -> { admin_food_index_path }
    end

    def update
      @food.update(food_params) ? flash[:success] = "更新成功" : flash[:danger] = "更新失敗"
      redirect_to admin_food_index_path(@food)
    end

    def create
      @food = Food.new(food_params)
      @food.save
      redirect_to admin_food_index_path
    end

    def images
      render json: Food.find(params[:id]).images
    end


    private

    def find_food
      @food = Food.find(params[:id])
    end

    def food_params
      params.require(:food).permit(
        :title_zh_tw,
        :title_en,
        :type_zh_tw,
        :type_en,
        :desc_zh_tw,
        :desc_en,
        :image_ids=> []
      )
    end

  end
end
