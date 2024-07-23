class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :code
      t.datetime :deleted_at, index: true
      t.string :name
      t.timestamps
    end
  end
end
