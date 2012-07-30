class RemoveColumnFromCatogory < ActiveRecord::Migration
  def up
    remove_column :catogories, :image_id
    remove_column :catogories, :artical_id
  end

  def down
    add_column :catogories, :artical_id, :string
    add_column :catogories, :image_id, :string
  end
end
