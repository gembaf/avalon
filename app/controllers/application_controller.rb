class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_group
    @current_group ||= Group.find(session[:group_id])
  end

  def current_user
    @current_user ||= User.find(session[:user_id])
  end
end

