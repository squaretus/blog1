class Post < ApplicationRecord
  belongs_to :user

  has_many :comments, dependent: :destroy

  has_many_attached :pictures, dependent: :destroy

  validates :title, presence: true, length: {minimum: 3}
  validates :body, presence: true, length: {minimum: 10}
end