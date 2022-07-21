# Модель постов с привязкой к пользователю, может иметь много комментариев  и изображений
# а так же не может быть короче чем 3 символа в заголовке и 10 в тексте поста

class Post < ApplicationRecord
  belongs_to :user

  has_many :comments, dependent: :destroy

  has_many_attached :pictures, dependent: :destroy

  validates :title, presence: true, length: { minimum: 3 }
  validates :body, presence: true, length: { minimum: 10 }
end
