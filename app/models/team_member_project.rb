class TeamMemberProject < ApplicationRecord
  belongs_to :team_member, optional: true
  belongs_to :projects
  has_many :tasks
end
