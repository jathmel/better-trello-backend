class Api::V1::TeamMemberProjectsController < ApplicationController
  before_action :find_join, only: [:update]
  def create
    @task_member_project = TeamMemberProject.new(team_member_project_params)
    if @task_member_project.valid?
      @task_member_project.save
      render json: @task_member_project
    else
      render json: @task_member_project.errors.messages
    end
  end

  def update
    @team_member_project.update(team_member_id: team_member_project_params[:team_member_id])
    render json: @team_member_project
  end

  private
  def find_join
    @team_member_project = TeamMemberProject.find_by(task_id: team_member_project_params[:task_id])
  end

  def team_member_project_params
    params.require(:team_member_project).permit(:team_member_id, :project_id, :task_id)
  end
end
