class CreateProjets < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :code
      t.string :description
      t.string :name
      t.integer :status
      t.datetime :initiated_at
      t.datetime :finalized_at

      t.belongs_to :product
      t.belongs_to :client
      t.belongs_to :work_team

      t.timestamps
    end
  end
end
