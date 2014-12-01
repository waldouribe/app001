# encoding: utf-8
module SessionsHelper
  def login(user)
    cookies.permanent[:authentication_token] = user.authentication_token    
  end

  def logout
    cookies.delete :authentication_token
    self.current_user = nil
  end

  def current_user
    @current_user ||= User.find_by_authentication_token cookies[:authentication_token]
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user?(user)
    user == current_user
  end

  def logged_in?
    !current_user.nil?
  end

  def logged_out?
    !logged_in?
  end

  def require_login
    redirect_to new_session_path, alert: "Login required" if logged_out?
  end
end