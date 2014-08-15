# NOTE: Plural
class GamesController < ApplicationController
  def index # display a _collection_ of games
    @games = Game.all
  end

  def show
    id = params[:id]
    @game = Game.find(id)
  end

  def update
    id = params[:id]
    @game = Game.find(id)
    letter = params[:guess]
    @game.guess(letter)
  end

end
