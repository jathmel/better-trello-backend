class TeamMemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :tasks

  def tasks
    member = TeamMember.find(object.id)
    member.tasks
  end
end
