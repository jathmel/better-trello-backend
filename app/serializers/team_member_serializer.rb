class TeamMemberSerializer < ActiveModel::Serializer
  has_many :projects
  attributes :id, :name, :email, :password_digest, :projects

  # def projects
  #   member = TeamMember.find(object.id)
  #   member.projects
  # end
end
