# Модель комментариев к постам
# Принадлежат пользователю и посту, но и у незарегистрированных пользователей могут быть
# Условие belongs_to :user - не обязательное

class Comment < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :post

  validates :body, presence: true, length: { minimum: 5 }
  validates :username, presence: true, if: -> { user_id.blank? }
end
