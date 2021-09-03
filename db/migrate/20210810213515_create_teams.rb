class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.string :jersey_img, null: false
      t.boolean :active
      t.references :manager, null: false, foreign_key: { to_table: 'users' }

      t.timestamps
    end
  end
end
