class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.references :game
      t.references :team
      t.references :entry

      t.timestamps null: false
    end
  end
end
