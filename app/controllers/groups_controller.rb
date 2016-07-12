class GroupsController < ApplicationController
  def new
    session[:group_id] = nil
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    render 'new' && return unless @group.save
    session[:group_id] = @group.id
    redirect_to users_path
  end

  private

  def group_params
    params.require(:group).permit(:name).merge(capacity: params[:commit])
  end
end

