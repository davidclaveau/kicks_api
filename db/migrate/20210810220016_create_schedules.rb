class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :season, null: false
      t.string :game_date, null: false
      t.string :game_day, null: false
      t.string :game_time, null: false
      t.references :home_team, null: false, foreign_key: { to_table: 'teams' }
      t.references :away_team, null: false, foreign_key: { to_table: 'teams' }
      t.string :field, null: false
      t.boolean :holiday

      t.timestamps
    end
  end
end
