class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    if current_user.id == @user.id
      @pomodoros = @user.pomodoros.order("created_at DESC")
    else
      redirect_to root_url
    end
  end
end
