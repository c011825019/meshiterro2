class RelationshipsController < ApplicationController
  def create
    follow = current_user.active_relationships.build(follower_id: params[:user_id])
    follow.save
    redirect_to request.referer
  end

  def destory
    follow = current_user.active_relationships.find_by(follower_id: params[:user_id])
    follow.destory
    redirect_to request.referer
  end
end
