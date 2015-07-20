class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.references :pool, null: false
      t.references :player, null: false

      t.timestamps null: false
    end
  end
end
