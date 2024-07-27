class CreateWorkteamMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :workteam_members do |t|
      t.belongs_to :work_team
      t.belongs_to :member
      t.belongs_to :sprint
      t.belongs_to :task
      t.belongs_to :role
      t.datetime :assignment_at
      t.datetime :deallocation_at
      t.timestamps
    end
  end
end
