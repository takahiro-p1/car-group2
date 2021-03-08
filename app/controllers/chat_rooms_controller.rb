class ChatRoomsController < ApplicationController

  before_action :authenticate_user!

  def show
    @chat_room = Carlist.find(params[:id])

    @chat_room_user = Reaction.where(carlist: @carlist).where(status: 1)

    @chat_messages = ChatMessage.where(carlist: @carlist)
  end
end