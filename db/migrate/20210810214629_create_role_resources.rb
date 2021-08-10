class CreateRoleResources < ActiveRecord::Migration[6.1]
  def change
    create_table :role_resources do |t|
      t.references :role, null: false, foreign_key: true
      t.references :resource, null: false, foreign_key: true

      t.timestamps
    end
  end
end
