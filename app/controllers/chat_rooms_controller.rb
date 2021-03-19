class ChatRoomsController < ApplicationController

  before_action :authenticate_user!

  def show
    @chat_room = Carlist.find(params[:id])

    @chat_room_user = Reaction.where(carlist: @carlist).where(status: 1)

    @chat_messages = ChatMessage.where(carlist: @carlist)
    @user = User.find(current_user.id)
    @mygroup_message = ChatMessage.where(params[:carlist_id]).order("id DESC")
  end
end
