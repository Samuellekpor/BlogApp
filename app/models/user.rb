class User < ApplicationRecord
  validates :name, length: { minimum: 1 }
  validates :posts_counter, numericality: { greater_than_or_equal_to: 0 }

  has_many :posts
  has_many :likes
  has_many :comments

  def three_most_recent_posts(author)
    Post.where(author:).order(created_at: :desc).limit(3)
  end
end
