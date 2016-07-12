class SessionController < ApplicationController
  def new
  end

  def login
    group = Group.find_by(name: params[:group_name])
    user = User.find_by(name: params[:user_name])
    render 'new' && return unless group && user
    session[:group_id] = group.id
    session[:user_id] = user.id
    redirect_to games_path
  end
end

