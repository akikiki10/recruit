class ApplicationController < ActionController::Base
  helper_method :current_users
  
  private
  
  def current_users
    @current_users ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  
  def login_required
    redirect_to login_path unless current_users
  end

  def forbid_login_user
    if current_users
      flash[:notice] = "すでにログインしています"
      redirect_to jobs_path
    end
  end

  def ensure_correct_user
    if current_users.id != params[:id].to_i
      flash[:notice] = "権限がありません"
      redirect_to users_path
    end
  end
end
