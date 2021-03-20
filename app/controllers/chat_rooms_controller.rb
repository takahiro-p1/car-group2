class ChatRoomsController < ApplicationController

  before_action :authenticate_user!

  def show
    @chat_room = Carlist.find(params[:id])

    @chat_room_user = Reaction.where(carlist: @carlist).where(status: 1)

    @chat_messages = ChatMessage.where(carlist: @carlist)
    @user = User.find(current_user.id)
    @mygroup_message = ChatMessage.where(carlist_id: params[:id]).order("id DESC")
    @current_people = Reaction.where(carlist_id: params[:id]).where(status: "like")
  end
end
