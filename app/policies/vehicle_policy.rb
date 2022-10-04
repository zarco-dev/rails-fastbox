class VehiclePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      user.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

=begin def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
=end
end
