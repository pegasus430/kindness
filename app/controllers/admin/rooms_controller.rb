class Admin::RoomsController < Admin::BaseController
  before_action :find_room, only: [:edit, :destroy, :update]
  before_action :find_store, only: [:index, :new, :edit, :create, :update, :destroy]

  def index
    @rooms = @store.rooms.all
  end

  def new
    @room = @store.rooms.new
  end

  def create
    @room = @store.rooms.new(room_params)
    @room.save
    respond_with @room, location: admin_store_rooms_path(@store)
  end

  def edit; end

  def update
    
    @room.update(room_params)
    respond_with @room, location: admin_store_rooms_path(@store)
  end

  def destroy
    @room.destroy
    respond_with @room, location: admin_store_rooms_path(@store)
  end

  def images
    render json: Room.find(params[:id]).images
  end

  def cover_images
    render json: Room.find(params[:id]).cover_images
  end


  def set_seq

    seqs = params[:seq]

    seqs.each_with_index do |a, index|
      dept = Room.find(a)
      dept.seq = index
      dept.save!
    end
    render json: { :data => "true" }
  end

  private
  def find_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(
      :store_id,
      :title_zh_tw,
      :title_en,
      :desc_zh_tw,
      :desc_en,
      :spec_zh_tw,
      :spec_en,
      :equipment_zh_tw,
      :equipment_en,
      :equipment_left_zh_tw=> [],
      :equipment_right_zh_tw=> [],
      :equipment_left_en=> [],
      :equipment_right_en=> [],
    :image_ids=> [],
    :cover_image_ids=> [])
  end
  def find_traffic
    @traffic = find_store.traffics.find(params[:id])
  end

  def find_store
    @store = Store.find(params[:store_id])
  end
end
