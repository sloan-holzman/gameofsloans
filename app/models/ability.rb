class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    can :read, :all # permissions for every user, even if not logged in
    # can :manage, Fight
    can :manage, Tag
    if user.present?  # additional permissions for logged in users (they can manage their posts)
      can :manage, [House, Character], user_id: user.id
      # if user.admin  # additional permissions for administrators
      #   can :manage, :all
      # end
    end
  end
end
