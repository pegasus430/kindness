module AdminConcern
  extend ActiveSupport::Concern

  def authenticate_administrator!
    unless (current_user.admin? or  current_user.teacher? or current_user.student?) 
      flash[:danger] = "權限不足"
      redirect_to admin_works_path(:user_type => 'grad')
    end
  end
end