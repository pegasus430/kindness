class Admin::BaseController < ApplicationController
  layout 'admin'
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  include AdminConcern
end
