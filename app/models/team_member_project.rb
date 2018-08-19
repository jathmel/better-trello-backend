class TeamMemberProject < ApplicationRecord
  belongs_to :team_member, optional: true
  belongs_to :project
  belongs_to :task
end
