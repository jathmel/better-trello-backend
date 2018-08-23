class Api::V1::TasksController < ApplicationController
  def index
    @tasks = Task.all
    render json: @tasks
  end

  def show
    @task = Task.find(params[:id])
    if @task
      render json: @task
    else
      render json: 'Task was not found'
    end
  end

  def create
    @task = Task.new(task_params)
    if @task.valid?
      @task.save
      render json: @task
    else
      render json: 'Task was not created'
    end
  end

  def update
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :category, :description, :priority)
  end
end
