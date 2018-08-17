class TeamMember < ApplicationRecord
  has_secure_password
  has_many :team_member_projects
  has_many :projects, through: :team_member_projects
  has_many :tasks, through: :team_member_projects
end
