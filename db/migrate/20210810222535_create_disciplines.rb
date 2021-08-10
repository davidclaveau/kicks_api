class CreateDisciplines < ActiveRecord::Migration[6.1]
  def change
    create_table :disciplines do |t|
      t.references :user, null: false, foreign_key: true
      t.string :card, null: false
      t.string :reason, null: false
      t.string :action

      t.timestamps
    end
  end
end
