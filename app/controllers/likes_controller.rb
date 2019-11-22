class LikesController < ApplicationController

  def create
    @like = Like.create(user_id: current_user.id, great_id: params[:great_id])
    @likes = Like.where(great_id: params[:great_id])
    # @greats = Great.all
    @great = Great.find(params[:great_id])
    @great.reload
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, great_id: params[:great_id])
    @like.destroy
    @likes = Like.where(great_id: params[:great_id])
    # @greats = Great.all
    @great = Great.find(params[:great_id])
    @great.reload
  end
  
  # private
  # def set_great
  #   @great = Great.find(params[:great_id])
  # end


end
