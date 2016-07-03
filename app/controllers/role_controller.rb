class RoleController < ApplicationController
  def new
  end

  def create
    group = Group.find_by_name(params[:group_name])
    role_ids = role_params.shuffle.map { |id| id.gsub(/[0-9]/, '') }
    group.distribute_role(role_ids)
    redirect_to games_main_path(group_name: group.name,
                                user_name: group.users.first.name)
  end

  private

  def role_params
    params.require(:role)
  end
end

