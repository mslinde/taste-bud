class SpotPolicy < ApplicationPolicy
  class Scope < PunditScope
    def resolve
      scope.all
    end
  end

  def index?
    return true
  end

  def show?
    return true
  end

  def create?
    return true
  end

  def new?
    create?
  end

  def destroy?
    true
  end
end
