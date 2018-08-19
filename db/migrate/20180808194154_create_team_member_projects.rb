class CreateTeamMemberProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :team_member_projects do |t|
      t.integer :team_member_id
      t.integer :project_id
      t.integer :task_id

      t.timestamps
    end
  end
end
