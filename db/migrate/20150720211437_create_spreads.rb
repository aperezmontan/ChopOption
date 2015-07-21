class CreateSpreads < ActiveRecord::Migration
  def change
    create_table :spreads do |t|
      t.belongs_to :favorite, null: false
      t.float      :points, null:false

      t.timestamps null: false
    end
  end
end
