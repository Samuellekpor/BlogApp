class RemoveColumnsFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :updatedAt, :date
    remove_column :users, :createdAt, :date
  end
end
