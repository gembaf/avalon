class GamesController < ApplicationController
  def main
    group = Group.find_by_name(params[:group_name])
    @users = group.users
  end
end

