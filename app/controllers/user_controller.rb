class UserController < ApplicationController

  def show
    @counts = Great.where(user_id: current_user.id).length
    @greats = Great.where(user_id: current_user.id).order("id DESC")
  end
end
