# Модель комментариев к постам
# Принадлежат пользователю и посту, но и у незарегистрированных пользователей могут быть
# Условие belongs_to :user - не обязательное

class Comment < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :post
end
