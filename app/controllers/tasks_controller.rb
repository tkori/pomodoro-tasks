class TasksController < ApplicationController
  def index
    @task = Task.new
    if user_signed_in?
      @tasks = current_user.tasks.order('created_at DESC')
    end
    # else
    #   @tasks = Task.all
    # end
  end

  def create
    @task = Task.create(task_params)
    if user_signed_in?
      @tasks = current_user.tasks.order('created_at DESC')
    end
    # else
    #   @tasks = Task.all
    # end
    redirect_to :root
  end

  def edit
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

  private
  def task_params
    params.require(:task).permit(:title, :status, :done, :total).merge(user_id: current_user.id)
  end
end
