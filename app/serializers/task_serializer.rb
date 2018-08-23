class TaskSerializer < ActiveModel::Serializer
  has_one :project
  attributes :id, :title, :description, :priority

  # def team_member
  #   member = TeamMember.find(object.id)
  #   member.name
  # end
  # def project
  #   project = Project.find(object.project_id)
  #   project.name
  # end
end
