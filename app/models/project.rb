class Project < ApplicationRecord
  has_many :team_member_projects
  has_many :team_members, through: :team_member_projects
  has_many :tasks, through: :team_member_projects
end
