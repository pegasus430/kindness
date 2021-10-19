class Admin::PagesController < Admin::BaseController
  before_action :find_page, only: [:edit, :destroy, :update]
  before_action :authenticate_administrator!

  def index
    @pages = Page.all
  end

  def show; end
  def edit; end

  def create
    @page = Page.new(page_params)
    @page.save
    respond_with @page, location: admin_pages_path 
  end

  def new
    @page = Page.new
  end
  
  def update
    @page.update(page_params)
    respond_with @page, location: admin_pages_path 
  end

  def destroy
    @page.destroy
    respond_with @page, location: admin_pages_path 
  end

  private

  def page_params
    params.require(:page).permit(:path, :name, :keyword, :title, :description)
  end

  def find_page
    @page = Page.find(params[:id])
  end




end