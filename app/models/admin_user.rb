# Модель администратора для гемов active_admin и devise

class AdminUser < ApplicationRecord
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
end
