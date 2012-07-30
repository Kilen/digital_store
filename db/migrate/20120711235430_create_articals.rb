class CreateArticals < ActiveRecord::Migration
  def change
    create_table :articals do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
