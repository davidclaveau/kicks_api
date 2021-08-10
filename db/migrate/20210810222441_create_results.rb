class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.references :schedule, null: false, foreign_key: true
      t.references :female_player, null: false, foreign_key: { to_table: 'users' }
      t.references :male_player, null: false, foreign_key: { to_table: 'users' }

      t.timestamps
    end
  end
end
