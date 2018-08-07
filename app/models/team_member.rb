class TeamMember < ApplicationRecord
  has_secure_password
  has_many :tasks
  has_many :projects, through: :tasks 
end