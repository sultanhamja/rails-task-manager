class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_param)
    task.save
    redirect_to task_path(task)
  end




  private
  def task_param
    params.require(:task).permit(:title, :details)
  end

end
