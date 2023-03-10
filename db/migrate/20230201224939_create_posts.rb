# frozen_string_literal: true

# class to create posts
class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.integer :authorId
      t.string :title
      t.text :text
      t.date :updatedAt
      t.date :createdAt
      t.integer :commentsCounter
      t.integer :likesCounter

      t.timestamps
    end
  end
end
