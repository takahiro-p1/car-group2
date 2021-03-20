class UsersController < ApplicationController
  
  before_action :authenticate_user!
  
  def show
    @user = User.find(params[:id])
  end

  def index
    @carlists = Carlist.all
    @already_not_swiped = Carlist.joins(:reaction)

    @user = User.find(current_user.id)
  end
end
