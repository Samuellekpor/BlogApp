# frozen_string_literal: true

# class to change foreign key name
class ChangeForeignKeyForPosts < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :user_id, :author_id
  end
end
