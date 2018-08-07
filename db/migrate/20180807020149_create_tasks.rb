class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.integer :priority
      t.integer :team_member_id
      t.integer :project_id

      t.timestamps
    end
  end
end
