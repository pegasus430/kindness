# frozen_string_literal: true

module Admin
  class SpotsController < Admin::BaseController

    before_action :find_spot, only: [:edit, :update, :destroy]
    before_action :find_store, only: [:index, :new, :edit, :create, :update, :destroy]
    before_action :spot_tags, only: [:new, :edit]


    def index
      @spots = @store.spots
      @hotspots = @spots.select {|spot| spot.tags.include?('hotspot')}
      @shoppings = @spots.select {|spot| spot.tags.include?('shopping')}
    end

    def new
      @spot = @store.spots.new
    end

    def edit; end 

    def destroy
      @spot.destroy
      respond_with @spot, location: -> { admin_store_spots_path(@store) }
    end

    def update
      @spot.update(spot_params) ? flash[:success] = "更新成功" : flash[:danger] = "更新失敗"
      redirect_to edit_admin_store_spot_path(@store, @spot)
    end

    def create
      @spot = @store.spots.new(spot_params)
      @spot.save!
      redirect_to admin_store_spots_path(@store)
    end

    def images
      render json: Spot.find(params[:id]).images
    end

    private

    def spot_tags
      @tags = ["hotspot", "shopping"]
    end

    def find_store
      @store = Store.find(params[:store_id])
    end

    def find_spot
      @spot = Spot.find(params[:id])
    end

    def spot_params
      params.require(:spots).permit(
        :title_zh_tw,
        :service_hours_zh_tw,
        :address_zh_tw,
        :tel_zh_tw,
        :title_en,
        :service_hours_en,
        :address_en,
        :tel_en,
        image_ids: [],
        tags: []
      )
    end

  end
end
