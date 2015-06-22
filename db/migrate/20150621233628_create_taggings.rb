class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :tagged, index: true
      t.string :tagged_type
      t.timestamps null: false
    end
  end
end
