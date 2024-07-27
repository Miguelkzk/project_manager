class CreateSprints < ActiveRecord::Migration[7.1]
  def change
    create_table :sprints do |t|
      t.belongs_to :projet
      t.string :name
      t.integer :sprint_code
      t.datetime :initiated_at
      t.datetime :finalized_at
      t.timestamps
    end
  end
end
