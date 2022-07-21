# Модель с разрешениями для авторизованных пользователей,
# а так же определяющая, какие посты может редактировать и удалять пользователь
# (только свои, пренадлежащие ему)

class Ability
  include CanCan::Ability
  
  def initialize(user)
    can [:index, :show], Post
    can [:index, :show, :create], Comment
    return unless user.present?
    can [:update, :destroy, :create], :all, user_id: user.id
  end
end
