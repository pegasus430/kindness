class RoomsController < ApplicationController
  # def index; end

  def show
  	@room = Room.find(params[:id])

    @store = @room.store
    @credit_cards_zh_tw = @store.credit_cards_zh_tw.nil? ? [] : eval(@store.credit_cards_zh_tw)
    @credit_cards_en = @store.credit_cards_en.nil? ? [] : eval(@store.credit_cards_en)
  end
end
