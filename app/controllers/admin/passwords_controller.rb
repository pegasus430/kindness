# frozen_string_literal: true

class Admin::PasswordsController <  Admin::BaseController

  def edit
    @user = current_user
  end

  def update
    @user = current_user
  begin  
    raise "密碼不一致" if params[:admin][:password] != params[:admin][:password_confirmation]
    raise "舊密碼錯誤" unless @user.valid_password?(params[:admin][:origin_password])  
    @user.update(user_params)
  rescue StandardError => e 
    flash[:danger] = e.message
    render :edit
  else
  flash[:success] = "更新成功" 
  bypass_sign_in(@user)
  redirect_to edit_admin_password_path
  end
  end

  private

  def user_params
    params.require(:admin).permit(:password, :password_confirmation)
  end

end