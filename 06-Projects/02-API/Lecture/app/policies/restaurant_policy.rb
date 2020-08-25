class RestaurantPolicy < ApplicationPolicy
  def update?
    record.user == user
  end

  def destroy?
    update?
  end
end
