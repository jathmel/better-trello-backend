class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :tasks

  def tasks
    project = Project.find(object.id)
    project.tasks
  end
end
