class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_save :user_token
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  validates :name, length: { minimum: 1 }
  validates :posts_counter, numericality: { greater_than_or_equal_to: 0 }

  has_many :comments, foreign_key: :author_id, dependent: :nullify
  has_many :likes, foreign_key: :author_id, dependent: :nullify
  has_many :posts, foreign_key: :author_id, dependent: :nullify

  def three_most_recent_posts
    posts.order(created_at: :desc).limit(3)
  end

  def user_token
    update_column(:token, TokenAuthorization.jwt_encode(email))
  end
end
