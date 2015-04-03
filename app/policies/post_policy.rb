class PostPolicy < ApplicationPolicy
  def update?
    user.admin? or not post.published?
  end
end
