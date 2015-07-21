class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.string :abbrev, null: false

      t.timestamps null: false
    end
  end
end
