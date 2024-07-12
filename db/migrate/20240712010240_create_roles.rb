class CreateRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :roles do |t|
      t.string :name
      t.integer :role_code
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
