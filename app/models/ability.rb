class Ability
  include CanCan::Ability

  def initialize(user)

    if user.id == current_user
        can :manage, :all
    else
        can :read, :all
    end
  end
end
