class PlayersController < ApplicationController
  def index
    @players = Player.order("username ASC")

    if params[:q].present?
      @players = @players.where("username LIKE ? OR full_name LIKE ? ",
        "%#{params[:q]}%", "%#{params[:q]}%")
    end
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(params[:player])

    if @player.save
      redirect_to @player
    else
      render :new
    end
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])

    if @player.update_attributes(params[:player])
      redirect_to players_path
    else
      render :edit
    end
  end

  def destroy
    @player = Player.find(params[:id])

    if @player.destroy
      redirect_to players_path
    end
  end

  def gamecard
    @player = Player.find(params[:id])
    @trophies = @player.trophies.order("points DESC")
  end
end
