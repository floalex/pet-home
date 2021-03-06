class Review < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  default_scope -> { order(created_at: :desc) }

  validates :body, length: { minimum: 5 }, presence: true
  validates :user, presence: true
end
