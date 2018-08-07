class CreateTeamMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :team_members do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.boolean :is_manager , default: false
  
      t.timestamps
    end
  end
end
