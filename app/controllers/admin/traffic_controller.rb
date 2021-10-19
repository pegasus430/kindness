# frozen_string_literal: true

module Admin
  class TrafficController < Admin::BaseController

    before_action :find_store, only: [:index, :new, :create]
    before_action :find_traffic, only: [:edit, :update, :destroy]

    def index
      @traffics = @store.traffics.order(seq: :asc)
    end

    def new
      @traffic = @store.traffics.new
    end

    def edit; end

    def destroy
      @traffic.destroy
      respond_with @traffic, location: -> { admin_store_traffic_index_path }
    end

    def update
      @traffic.update(traffic_params) ? flash[:success] = "更新成功" : flash[:danger] = "更新失敗"
      redirect_to edit_admin_store_traffic_path(@store, @traffic)
    end

    def create
      max_seq = @store.traffics.map(&:seq).max || 0
      @traffic = @store.traffics.new(traffic_params.merge(seq: max_seq + 1))
      @traffic.save
      redirect_to edit_admin_store_traffic_path(@store, @traffic)
    end

    private

    def traffic_params
      params.require(:traffic).permit(
        :title_zh_tw,
        :description_zh_tw,
        :title_en,
        :description_en
      )
    end

    def find_traffic
      @traffic = Traffic.find(params[:id])
      @store = Traffic.find(params[:id]).store
    end

    def find_store
      @store = Store.find(params[:store_id])
    end

  end
end
