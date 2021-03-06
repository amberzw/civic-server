class GenePolicy < Struct.new(:user, :gene)
  def create?
    user
  end

  def update?
    Role.user_is_at_least_a?(user, :editor)
  end

  def destroy?
    Role.user_is_at_least_a?(user, :editor)
  end
end
