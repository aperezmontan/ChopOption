class CreatePools < ActiveRecord::Migration
  def change
    create_table :pools do |t|
      t.string   :name, null: false
      t.string   :number_of_teams, null: false
      t.text     :description, null:false

      t.timestamps null: false
    end
  end
end
