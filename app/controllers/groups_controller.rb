class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    render 'new' && return unless @group.save
    redirect_to users_path(group_name: @group.name)
  end

  private

  def group_params
    params.require(:group).permit(:name).merge(capacity: params[:commit])
  end
end

