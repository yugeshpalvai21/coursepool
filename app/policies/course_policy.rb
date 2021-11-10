class CoursePolicy < ApplicationPolicy
  def edit?
    user.has_role?(:admin) || record.user.id == user.id
  end

  def update?
    user.has_role?(:admin) || record.user.id == user.id
  end

  def destroy?
    user.has_role?(:admin) || record.user.id == user.id
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
