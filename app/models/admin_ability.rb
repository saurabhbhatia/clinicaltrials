# All back end users (i.e. Active Admin users) are authorized using this class
class AdminAbility
  include CanCan::Ability

  def initialize(user)
    user ||= AdminUser.new

    # We operate with three role levels:
    # - Editor
    # - Moderator
    # - Manager

    # An editor can to the following:
    can :manage, :all
    end
end
