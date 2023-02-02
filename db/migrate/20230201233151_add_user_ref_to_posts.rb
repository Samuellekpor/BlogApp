# frozen_string_literal: true

# class to add user reference to posts
class AddUserRefToPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :user, null: false, foreign_key: true
  end
end
