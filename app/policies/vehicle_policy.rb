class VehiclePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      user.driver? ? scope.all : scope.where(user: user)
    end
  end

  def show?
    true
  end

=begin def create?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
=end
end
