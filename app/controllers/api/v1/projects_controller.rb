class Api::V1::ProjectsController < ApplicationController

  before_action :find_project, only: [:update, :tasks, :destroy]
  def index
    @project = Project.all
    render json: @project
  end

  def show
  end

  def create
    @project = Project.new(project_params)
    if @project.valid?
      render json: @project
    else
      render json: @projects.errors
    end
  end

  def update
  end

  def destroy
  end

  def tasks

  end

  private
  def find_project
    @project = Project.find(params[:id])
  end
  def project_params
    params.require(:project).permit(:name)
  end
end
