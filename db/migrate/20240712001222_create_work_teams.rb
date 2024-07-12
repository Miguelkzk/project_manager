class CreateWorkTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :work_teams do |t|
      t.integer :code
      t.string :description
      t.string :name
      t.datetime :deleted_at
      t.integer :max_projets
      t.timestamps
    end
  end
end
