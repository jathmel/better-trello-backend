class Project < ApplicationRecord
  has_many :tasks
  has_many :team_members, through: :tasks 
end
