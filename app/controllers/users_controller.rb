class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @projects = current_user.projects.where(status: 0).order('created_at DESC')
    @pomodoros = current_user.pomodoros.where(status: 1).order('created_at DESC')
  end
end
