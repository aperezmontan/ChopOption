class CreatePools < ActiveRecord::Migration
  def change
    create_table :pools do |t|
      t.string  :name, null: false
      t.integer :number_of_teams, null: false

      t.timestamps null: false
    end
  end
end
