class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.belongs_to :home_team, null:false
      t.belongs_to :away_team, null: false
      t.references :week, null: false
      t.datetime   :start_time, null: false
      t.integer    :home_team_score, null: false, default: 0
      t.integer    :away_team_score, null: false, default: 0
      t.references :spread, null: false

      t.timestamps null: false
    end
  end
end
