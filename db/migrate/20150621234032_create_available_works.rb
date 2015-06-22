class CreateAvailableWorks < ActiveRecord::Migration
  def change
    create_table :available_works do |t|
      t.string :title
      t.string :description
      t.string :image
      t.timestamps null: false
    end
  end
end
