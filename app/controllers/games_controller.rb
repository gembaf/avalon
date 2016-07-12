class GamesController < ApplicationController
  def main
    @group = current_group
    @user = current_user
  end
end

