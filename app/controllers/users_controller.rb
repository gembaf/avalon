class UsersController < ApplicationController
  def new
    @group = current_group
    @group.users.destroy_all unless @group.users.blank?
    @group.capacity.times { @group.users.build }
  end

  def create
    users = params[:group][:users_attributes].values
    users.each do |user|
      current_group.users << User.create(name: user[:name])
    end
    session[:user_id] = current_group.users.first.id
    redirect_to role_path
  end
end

