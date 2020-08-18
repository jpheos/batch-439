class RestaurantPolicy < ApplicationPolicy
  # We have access to 2 variables in pundit policies
  # -> user => current_user
  # -> record => restaurant instance

  class Scope < Scope
    # def index?
    def resolve
      # scope is a variable that contain the class Restaurant
      scope.all
    end
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    new?
  end

  def edit?
    record.user == user || user.admin?
  end

  def update?
    edit?
  end

  def destroy?
    edit?
  end
end
