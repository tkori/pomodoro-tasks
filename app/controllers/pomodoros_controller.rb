class PomodorosController < ApplicationController
  before_action :authenticate_user!
  # after_action :set_pomodoros

  def index
    @pomodoro = Pomodoro.new
    # PostgreSQLを使用したときには記述を変更する必要があるかもしれない
    @pomodoros_for_week = current_user.pomodoros.where('created_at > ?', 7.days.ago).where(status: 1).order(created_at: :desc).group_by{|pomodoro| pomodoro.created_at.strftime("%Y/%-m/%-d (%a)")}
  end

  def create
    @pomodoro = Pomodoro.create(pomodoro_params)
    @pomodoros_for_week = current_user.pomodoros.where('created_at > ?', 7.days.ago).where(status: 1).order(created_at: :desc).group_by{|pomodoro| pomodoro.created_at.strftime("%Y/%-m/%-d (%a)")}
  end

  def update
    @pomodoro = Pomodoro.find(params[:id])
    binding.pry
    @pomodoro.update(status: params[:status])
    @pomodoro = Pomodoro.new
    @pomodoros_for_week = current_user.pomodoros.where('created_at > ?', 7.days.ago).where(status: 1).order(created_at: :desc).group_by{|pomodoro| pomodoro.created_at.strftime("%Y/%-m/%-d (%a)")}
  end

  def destroy
    @pomodoro = Pomodoro.find(params[:id])
    @pomodoro.destroy
    @pomodoro = Pomodoro.new
    @pomodoros_for_week = current_user.pomodoros.where('created_at > ?', 7.days.ago).where(status: 1).order(created_at: :desc).group_by{|pomodoro| pomodoro.created_at.strftime("%Y/%-m/%-d (%a)")}
  end

  private
  def pomodoro_params
    params.require(:pomodoro).permit(:title, :status, :project_id, :start_time, :end_time, :memo).merge(user_id: current_user.id)
  end
end
