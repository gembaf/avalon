class RoleController < ApplicationController
  def new
  end

  def create
    role_ids = role_params.shuffle.map { |id| id.gsub(/[0-9]/, '') }
    current_group.distribute_role(role_ids)
    redirect_to games_path
  end

  private

  def role_params
    params.require(:role)
  end
end

