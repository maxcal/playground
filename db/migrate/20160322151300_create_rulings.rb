class CreateRulings < ActiveRecord::Migration
  def change
    create_table :rulings do |t|
      t.belongs_to :claim, index: true, foreign_key: true
      t.belongs_to :commissioner, index: true, foreign_key: false

      t.timestamps null: false
    end

    add_foreign_key :rulings, :users, column: :commissioner_id
    add_index :rulings, [:claim_id, :commissioner_id], unique: true
  end
end
