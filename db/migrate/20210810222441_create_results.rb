class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.references :schedule, null: false, foreign_key: true
      t.references :home_female_player, null: false, foreign_key: { to_table: 'users' }
      t.references :home_male_player, null: false, foreign_key: { to_table: 'users' }
      t.references :away_female_player, null: false, foreign_key: { to_table: 'users' }
      t.references :away_male_player, null: false, foreign_key: { to_table: 'users' }

      t.timestamps
    end
  end
end
