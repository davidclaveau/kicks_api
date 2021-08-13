class CreateRosters < ActiveRecord::Migration[6.1]
  def change
    create_table :rosters do |t|
      t.references :team
      t.references :user

      t.timestamps
    end
  end
end
