class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string   :name, null: false
      t.string   :email, null: false
      t.string   :password_digest, null: false
      t.boolean  :admin, default: false, null: false

      t.timestamps null: false
    end
  end
end
