class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def index
    # @project = Project.new
    @projects = current_user.projects.where(status: 0).order('created_at DESC')
    # PostgreSQLを使用したときには記述を変更する必要があるかもしれない
    # @pomodoros = current_user.pomodoros.where('created_at > ?', 7.days.ago).order(created_at: :desc).group_by{|pomodoro| pomodoro.created_at.strftime("%F")}
  end

  def create
    # @project = Project.create(project_params)
    # @projects = current_user.projects.order('created_at DESC')
  end

  def edit
    # @project = Project.find(params[:id])
  end

  def destroy
    # @project = Project.find(params[:id])
    # @project.destroy
  end

  private
  def project_params
    params.require(:project).permit(:title, :status, :done, :total).merge(user_id: current_user.id)
  end
end
