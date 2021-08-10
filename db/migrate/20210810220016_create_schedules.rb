class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :season
      t.string :game_date
      t.string :game_time
      t.references :home_team, null: false, foreign_key: { to_table: 'teams' }
      t.references :away_team, null: false, foreign_key: { to_table: 'teams' }
      t.string :field
      t.boolean :holiday

      t.timestamps
    end
  end
end
