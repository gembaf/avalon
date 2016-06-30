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
    name = group.users.first.name
    redirect_to games_main_path(group_name: params[:group_name], user_name: name)
  end
end

