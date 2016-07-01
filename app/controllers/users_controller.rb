class UsersController < ApplicationController
  def new
    @group = Group.find_by_name(params[:group_name])
    @group.users.destroy_all unless @group.users.blank?
    @group.capacity.times { @group.users.build }
  end

  def create
    group = Group.find_by_name(params[:group_name])
    users = params[:group][:users_attributes].values
    users.each do |user|
      group.users << User.create(name: user[:name])
    end
    redirect_to role_path(group_name: params[:group_name])
  end
end

