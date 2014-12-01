# encoding: utf-8
class SessionsController < ApplicationController
  skip_before_action :require_login 

  def new
  end

  def create
    user = User.find_by_email(params[:sessions][:email].downcase)
    if authenticated?(user, params[:sessions][:password]) and user.role != 'visitor' 
      login user
      redirect_to root_path
    else
      redirect_to new_session_path, alert: 'Invalid email or password'
    end
  end

  def destroy
    logout
    redirect_to root_path
  end

  private
    def authenticated?(user, password)
      user && user.authenticate(password)
    end
end
