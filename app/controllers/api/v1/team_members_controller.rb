class Api::V1::TeamMembersController < ApplicationController
  def index
    team = TeamMember.all
    render json: team
  end

  def show
    # byebug
    team_member = TeamMember.find(params[:id])
    if team_member.valid?
      render json: team_member, status: :accepted
    else
      render json: {errors: team_member.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def create
  end

  def update
    team_member.update(note_params)
    if team_member.save
      render json: team_member, status: :accepted
    else
      render json: { errors: team_member.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
  end
end
