class Api::V1::TeamMembersController < ApplicationController
  before_action :find_team_member, only: [:update, :destoy, :my_projects, :my_teams, :my_tasks]



  # returns a team_member
  def show
    @team_member = TeamMember.find(params[:id])
    if @team_member.valid?
      render json: @team_member, status: :accepted
    else
      render json: {errors: @team_member.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def login
    @team_member = TeamMember.find_by(email: team_member_params[:email])
    if @team_member && @team_member.authenticate(team_member_params[:password])
      render json: @team_member
    else
      render json: 'Member Not found'
    end
  end



  # returns the team members projects
  def my_projects
    @team_member
    @projects = team_member.projects
    if @team_member.valid? && @projects.empty?
      render json: @projects
    elsif !@team_member.valid?
      render json: 'Who are you?'
    else
      render json: 'You have no Projects at this moment'
    end
  end

  # returns the team members tasks
  def my_tasks
    @team_member
    @tasks = team_member.tasks
    if @team_member.valid? && @tasks.empty?
      render json: @tasks
    elsif !@team_member.valid?
      render json: 'Who are you?'
    else
      render json: 'You have no Tasks at this moment'
    end
  end
  def my_teams
    @team_member
    @teams = team_member.teams
    if @team_member.valid? && @teams.empty?
      render json: @teams
    elsif !@team_member.valid?
      render json: 'Who are you?'
    else
      render json: 'You have no Teams at this moment'
    end
  end



  def create
    # debugger
    @team_member = TeamMember.new(team_member_params)
    if @team_member.valid?
      @team_member.save
      render json: @team_member
    else
      render json: @team_member.errors.full_messages
    end
  end

  def update
    @team_member.update(note_params)
    if @team_member.save
      render json: @team_member, status: :accepted
    else
      render json: { errors: @team_member.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    team_member.delete
    render json: 'YOU GOT DELETED'
  end

  private

  # finds a team member base on their email
  def find_team_member
    @team_member = TeamMember.find_by(eamil: team_member_params[:email])
  end

  # strong params
  def team_member_params
    params.require(:team_member).permit(:name, :email, :password)
  end
end
