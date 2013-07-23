class AddColumnToImages < ActiveRecord::Migration
  def change
    add_column :images, :user_id, :integer
  end
end
