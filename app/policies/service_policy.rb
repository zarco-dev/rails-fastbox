class ServicePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      if !user.nil?
        user.user_type == "driver" ? scope.all : scope.where(user: user)
      end
    end
  end

  def show?
    user == record.user
  end

  def create?
    return true
  end

  def destroy?
    return true
  end

  def update?
    user.user_type == "driver"
  end
end
