class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :category
      t.string :title
      t.string :description
      t.date :deadline
      t.string :priority
      t.integer :team_member_project_id
      # t.integer :project_id

      t.timestamps
    end
  end
end
