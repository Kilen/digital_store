class CreateCatogories < ActiveRecord::Migration
  def change
    create_table :catogories do |t|
      t.string :name
      t.integer :image_id
      t.integer :artical_id
      t.text :description

      t.timestamps
    end
  end
end
