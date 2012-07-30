class AddColumnToArtical < ActiveRecord::Migration
  def change
    add_column :articals, :catogory_id, :integer

  end
end
