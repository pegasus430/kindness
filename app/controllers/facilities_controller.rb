class FacilitiesController < ApplicationController
  def index

  	if I18n.locale == :en
  		 
  		render template: 'facilities/index.en', :locals => {:title => "新增最新消息",:action => "new"}
  	else
  		 
  		render template: 'facilities/index.zh-TW', :locals => {:title => "新增最新消息",:action => "new"}
  	end

  end
end
