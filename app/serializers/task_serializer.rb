class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :team_member, :project

  def team_member
    member = TeamMember.find(object.team_member_id)
    member.name
  end
  def project
    project = Project.find(object.project_id)
    project.name
  end
end
