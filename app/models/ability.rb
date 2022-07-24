# Модель с разрешениями для авторизованных пользователей,
# а так же определяющая, какие посты может редактировать и удалять пользователь
# (только свои, пренадлежащие ему)

class Ability
  include CanCan::Ability
  
  def initialize(user)
    can %i[index show], Post
    can %i[show create], Comment
    
    return if user.blank?

    can %i[update destroy], :all, user_id: user.id
    can :create, :all
  end
end
