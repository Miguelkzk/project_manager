class CreateMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :last_name
      t.string :card_id
      t.datetime :deleted_at, index: true
      t.string :code
      t.timestamps
    end
  end
end
