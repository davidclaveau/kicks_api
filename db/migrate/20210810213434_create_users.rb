class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :phone_number, null: false
      t.integer :team_id
      t.string :winter_team
      t.string :public_sector
      t.string :image

      t.timestamps
    end
  end
end
