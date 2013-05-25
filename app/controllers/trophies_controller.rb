class TrophiesController < ApplicationController
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
