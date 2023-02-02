class RemoveColumnsFromComments < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :updatedAt, :date
    remove_column :comments, :createdAt, :date
  end
end
