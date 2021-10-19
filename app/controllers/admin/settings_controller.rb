class Admin::SettingsController < Admin::BaseController

  def show
    @setting = (Setting.count > 0 ? Setting.first : Setting.new)
  end

  def update
    if params[:setting][:id]
      @setting = Setting.find(params[:setting][:id])
      @setting.update(setting_params)
    else
      @setting = Setting.new(setting_params)
      @setting.save!
    end
    flash[:info] = "更新成功"
    if params['source'] == 'banner'
      redirect_to edit_admin_banner_path(params['banner_id'])
    else
      redirect_to admin_setting_path
    end
  end

  private

  def setting_params

    params.require(:setting).permit(
      :title_zh_tw,
      :title_en,
      :description,
      :keyword,
      :fb_url,
      :ig_url,
      :booking_url,
      :tripadvisor_url,
      :tripadvisor_en_url,
      :easytravel_url,
      :copyright,
      :hr_url,
      :designed,
      :banner,
      :classic_banner,
      :grad_banner,
      :teacher_banner,
      :event_banner,
      :aboutus_name_zh_tw,
      :aboutus_name_en,
      :aboutus_description_zh_tw,
      :aboutus_description_en,
    )
  end


end
