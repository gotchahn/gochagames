class TrophiesController < ApplicationController
  def index
    player = Player.find(params[:player_id])
    @trophies = player.trophies

    if params[:game_id].present?
      @trophies = @trophies.where("game_id = ?", params[:game_id])
    end

    render partial: "trophies_list", locals: { trophies: @trophies }, status: 200
  end

  def new
    @player = Player.find(params[:player_id])
    @trophy = @player.trophies.build
  end

  def create
    @player = Player.find(params[:player_id])
    @trophy = @player.trophies.build(params[:trophy])

    if @trophy.save
      redirect_to gamecard_player_path(@player)
    else
      render :new
    end
  end
end
