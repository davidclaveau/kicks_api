class CreateDisciplines < ActiveRecord::Migration[6.1]
  def change
    create_table :disciplines do |t|
      t.references :user, null: false, foreign_key: true
      t.string :reason, null: false
      t.date :action, null: false

      t.timestamps
    end
  end
end
