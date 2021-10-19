require "application_responder"

class ApplicationController < ActionController::Base
  before_action :setting
  before_action :set_locale

  self.responder = ApplicationResponder
  respond_to :html

  protect_from_forgery with: :exception

  layout :layout_by_resource

  helper_method :locale

  def locale
    (params["locale"] || 'zh-TW').to_sym
  end


  def setting
    @setting = Setting.first
    @first_store = Store.first
  end

  def after_sign_in_path_for(resource)
    if resource.admin?
      admin_news_index_path
    else
      admin_store_spots_path(Store.first)
    end
  end

  private
  def layout_by_resource
    if devise_controller?
      false
    else
      "application"
    end
  end


  # set_locale
  def set_locale
    I18n.locale = params[:locale] || 'zh-TW'
  end

  def default_url_options
    { locale: I18n.locale }
  end
end
