class GamesController < ApplicationController

  def create
    game = Game.create(state: params[:state])
    render json: game, status: 201
  end

  def show
    game = Game.find_by(id: params[:id])
    render json: game
  end

  def update
    game = Game.find_by(id: params[:id])
    game.update(game_params)
    render json: game
  end

  def index
    games = Game.all
    render json: games
  end

  private

  def game_params
    params.permit(:id, state: [])
  end





end
