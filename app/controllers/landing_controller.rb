class LandingController < ApplicationController

  # USER_TYPES = { 'grad' => '畢業作品', 'teacher' => '教師作品', 'classic' => '典藏作品' }

  def index
    @news = News.order(top: :desc, public_date: :desc).limit(3)
    @landing_banners = Banner.landing.first
  end

  def about
    if I18n.locale == :en
      render template: 'landing/about.en', :locals => {:title => "新增最新消息",:action => "new"}
    else
      render template: 'landing/about.zh-TW', :locals => {:title => "新增最新消息",:action => "new"}
    end
  end

  def food
    @foods = Food.all
  end

  def facility
  end
end
