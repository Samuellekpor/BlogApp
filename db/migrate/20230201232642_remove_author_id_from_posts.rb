# frozen_string_literal: true

# class to remove authorId from Post
class RemoveAuthorIdFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :authorId, :integer
  end
end
