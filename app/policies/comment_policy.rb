class CommentPolicy < ApplicationPolicy
  class Scope < PunditScope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def new?
    create?
  end

  def show?
    true
  end

  def destroy?
    true
  end

end

