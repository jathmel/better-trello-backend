class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.integer :team_member_id
      t.integer :team_id

      t.timestamps
    end
  end
end
