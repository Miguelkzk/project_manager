class CreateTaskStatuses < ActiveRecord::Migration[7.1]
  def change
    create_table :task_statuses do |t|
      t.string :name
      t.integer :status_code
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
