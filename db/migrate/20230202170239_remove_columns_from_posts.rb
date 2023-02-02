class RemoveColumnsFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :updatedAt, :date
    remove_column :posts, :createdAt, :date
  end
end
