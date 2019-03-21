class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      can :create, Video
      can :destroy, Video, user_id: user.id
      can :read, Video
      can :update, Video , user_id: user.id
    end
  end
end