class Admin::NewsController < Admin::BaseController

  before_action :find_news, only: [:edit, :update, :destroy]
  def index
    @news = News.all.order(top: :desc, public_date: :asc)
  end

  def new
    @news = News.new
  end

  def edit; end

  def destroy
    @news.destroy
    respond_with @news, location: -> { admin_news_index_path }
  end

  def update
    @news.update(news_params) ? flash[:success] = "更新成功" : flash[:danger] = "更新失敗"
    redirect_to edit_admin_news_path(@news)
  end

  def create
    @news = News.new(news_params)
    @news.save
    redirect_to admin_news_index_path
  end

  def images
    render json: News.find(params[:id]).images
  end

  private

  def find_news
    @news = News.find(params[:id])
  end

  def news_params
    params.require(:news).permit(
      :title_zh_tw,
      :content_zh_tw,
      :description_zh_tw,
      :title_en,
      :content_en,
      :description_en,
      :public_date,
      :top,
      :image_ids=> []
    )
  end

end
