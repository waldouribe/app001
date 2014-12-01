class HomeController < ApplicationController
  skip_before_action :require_login
  def index
    if logged_out?
      @user = User.new
      render 'index'
    else 
      redirect_to categories_path
    end
  end
end
