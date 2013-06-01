class GamesController < ApplicationController

  def index
    @games = Game.order("title DESC")

    if params[:q].present?
      @games = Game.where("title LIKE ?","%#{params[:q]}%")
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params[:game])

    if @game.save
      redirect_to @game
    else
      render :new
    end
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])

    if @game.update_attributes(params[:game])
      redirect_to @game
    else
      render :edit
    end
  end
end
