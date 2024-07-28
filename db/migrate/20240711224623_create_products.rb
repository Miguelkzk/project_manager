class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :code
      t.string :name

      t.belongs_to :work_team

      t.timestamps
      t.datetime :deleted_at, index: true
    end
  end
end
