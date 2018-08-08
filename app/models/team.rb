class Team < ApplicationRecord
  has_many :members
  has_many :team_members, through: :members
end
