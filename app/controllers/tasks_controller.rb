class TasksController < ApplicationController
  def tasks
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new

  end

  def create

    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(params[:restaurant])
    redirect_to tasks_path
  end

end

private

def task_params
  params.require(:task).permit(:title, :details)
end
