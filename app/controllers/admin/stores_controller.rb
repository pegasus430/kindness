# frozen_string_literal: true

module Admin
  class StoresController < Admin::BaseController

    before_action :find_store, only: [:edit, :update, :destroy]

    def index
      @stores = Store.order(created_at: :desc).all
    end

    def new
      @store = Store.new
    end

    def edit
      @credit_cards_zh_tw = @store.credit_cards_zh_tw.nil? ? [] : eval(@store.credit_cards_zh_tw)
      @credit_cards_en = @store.credit_cards_en.nil? ? [] : eval(@store.credit_cards_en)
    end

    def destroy
      @store.destroy
      respond_with @store, location: -> { admin_stores_path }
    end

    def update
      @store.update(store_params) ? flash[:success] = "更新成功" : flash[:danger] = "更新失敗"
      redirect_to edit_admin_store_path(@store)
    end

    def create
      @store = Store.new(store_params)
      @store.save!
      redirect_to admin_stores_path
    end

    def cover_images
      render json: Store.find(params[:id]).cover_images
    end
    def traffic_images
      render json: Store.find(params[:id]).traffic_images
    end

    private

    def find_store
      @store = Store.find(params[:id])
    end

    def store_params
      params.require(:store).permit(
        :region_id,
        :title_zh_tw,
        :title_en,
        :address_zh_tw,
        :address_en,
        :desc_zh_tw,
        :desc_en,
        :reservation_information_en,
        :reservation_information_zh_tw,
        :reservation_check_in_time_en,
        :reservation_check_in_time_zh_tw,
        :reservation_contact_info_en,
        :reservation_contact_info_zh_tw,
        credit_cards_zh_tw: [],
        credit_cards_en: [],
        cover_image_ids: [],
        traffic_image_ids: []

      )
    end


  end
end
