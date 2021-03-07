class UsersController < ApplicationController
  
  before_action :authenticate_user!
  
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = Carlist.all
    @user = User.find(current_user.id)
  end
end
