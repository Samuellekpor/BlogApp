# frozen_string_literal: true

# class to add post references to comments
class AddPostRefToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :post, null: false, foreign_key: true
  end
end
