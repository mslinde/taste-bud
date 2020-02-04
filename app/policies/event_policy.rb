class EventPolicy < ApplicationPolicy
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

  def update?
    true
  end

  def edit?
    update?
  end

  def join?
    return true
  end
end
