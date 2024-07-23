class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.integer :client_number
      t.string :name
      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
