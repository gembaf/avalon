class GameController < ApplicationController
  def new
  end

  def create
    names = params[:name].values.select { |name| !name.empty? }
    names.each do |name|
      User.create(name: name)
    end
    redirect_to game_main_path
  end

  def main
    @users = User.all
  end
end

