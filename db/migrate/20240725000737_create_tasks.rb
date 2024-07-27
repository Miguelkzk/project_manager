class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.belongs_to :sprint
      t.belongs_to :task_status
      t.datetime :initiated_at
      t.datetime :finalized_at
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
