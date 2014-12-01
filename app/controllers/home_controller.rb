class HomeController < ApplicationController
  skip_before_action :require_login
  def index
    @user = User.new
    render 'index'
  end
end
