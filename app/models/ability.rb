class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities

    # can :access, :rails_admin
    # can :dashboard
    # can :manage, :all

    if user.is_admin?
      can :access, :rails_admin
      can :dashboard
      can :manage, :all
      cannot :destroy, User, :id => user.id
      cannot :destroy, User, :is_super_admin? => true
      cannot :update, User, :is_super_admin? => true
      cannot :create, User, :is_super_admin? => true
      cannot :destroy, Role
      cannot :update, Role, :super_admin
      cannot :destroy, Library
      cannot :update, Library
      cannot :create, Library
    elsif user.is_super_admin?
      can :access, :rails_admin
      can :dashboard
      can :manage, :all
      cannot :destroy, User, :id => user.id
      cannot :create, User, :is_super_admin? => true
      cannot :destroy, Role
      cannot :destroy, Library
      cannot :update, Library
      cannot :create, Library

      # Allow super admins to wreck havoc!
    else
      cannot :access, :rails_admin
      can :dashboard
      can :read, :all
      # can :manage, :all
    end
  end
end
