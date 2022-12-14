class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def index
    true
  end

  def new?
    true
  end

  def create?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
