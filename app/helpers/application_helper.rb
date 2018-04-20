module ApplicationHelper
  def is_admin?
    current_user.roles.where(name: "admin").count == 1
  end
  def is_leader?
    current_user.roles.where(name: "leader").count == 1
  end
end
