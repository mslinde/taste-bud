class EventPolicy < ApplicationPolicy
  class Scope < Sscope
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
end
