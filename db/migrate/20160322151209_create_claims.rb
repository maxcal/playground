class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
      t.belongs_to :claimant, index: true, foreign_key: false
      t.timestamps null: false
    end

    add_foreign_key :claims, :users, column: :claimant_id
  end
end
