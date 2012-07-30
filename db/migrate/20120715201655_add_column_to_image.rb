class AddColumnToImage < ActiveRecord::Migration
  def change
    add_column :images, :catogory_id, :integer

  end
end
