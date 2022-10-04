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

  def update?
    record.user == user
  end

=begin def destroy?
    record.user == user
=end

end
