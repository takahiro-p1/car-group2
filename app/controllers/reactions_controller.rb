class ReactionsController < ApplicationController

  #def create
  #  reaction = Reaction.find_or_initialize_by( #user_id: current_user.id)
  #  reaction.update(
  #    status: params[:reaction]
  #  )

  def create
    Reaction.create(user_id: current_user.id, carlist_id: params[:carlist_id], status: params[:status])
  end
end
