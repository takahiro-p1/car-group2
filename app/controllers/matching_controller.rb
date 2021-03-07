class MatchingController < ApplicationController

  before_action :authenticate_user!

  def index
    match_group_numbers = Reaction.where(user_id: current_user.id, status: 'like').pluck(:carlist_id)
    @match_groups = Carlist.find(match_group_numbers)
    @user = User.find(current_user.id)
  end
end
