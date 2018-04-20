module RolesHelper
  def role_already_exists?
    Role.all.where(name: params[:name]).count == 1
  end
end
