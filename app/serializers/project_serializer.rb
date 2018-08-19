class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :tasks, :team_members

  def tasks
    project = Project.find(object.id)
    project.tasks
  end
  def team_members
    project = Project.find(object.id)
    project.team_members
  end
end
