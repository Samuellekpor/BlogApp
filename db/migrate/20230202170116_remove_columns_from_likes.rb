class RemoveColumnsFromLikes < ActiveRecord::Migration[7.0]
  def change
    remove_column :likes, :updatedAt, :date
    remove_column :likes, :createdAt, :date
  end
end
