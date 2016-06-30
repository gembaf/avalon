class GamesController < ApplicationController
  def new
  end

  def login
    redirect_to games_main_path(group_name: params[:group_name], user_name: params[:user_name])
  end

  def main
    @group = Group.find_by_name(params[:group_name])
    @user = User.where(name: params[:user_name]).first
  end
end

