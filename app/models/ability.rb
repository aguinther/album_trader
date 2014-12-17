class Ability
  include CanCan::Ability

  def initialize(user)

    if user && user.admin?
      can :manage, :all
    elsif user
      can :crud, :all
    else
      can :read, :all
    end

  end
end
