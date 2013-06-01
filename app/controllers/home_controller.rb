class HomeController < ApplicationController
  skip_before_filter :authenticate

  def index
    @games = Game.all
  end
end
