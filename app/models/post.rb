class Post < ApplicationRecord
  after_save :update_posts_counter
  validates :title, length: { in: 1..250 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  has_many :likes, dependent: :nullify
  has_many :comments, dependent: :nullify
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  def update_posts_counter
    author.increment!(:posts_counter)
  end

  def five_most_recent_comments
    Comment.order(created_at: :desc).includes(:author).limit(5)
  end
end
