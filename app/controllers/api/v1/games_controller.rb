class Api::V1::GamesController < ApplicationController
    skip_before_action :authorized 

    def index
        @games = Game.all
        render json: @games
    end

    def show
        @game = Game.find(params[:id])
        render json: @game
    end

    def create
        @game = Object.new(game_params)
        unless @game.save
            render json: { status: 500}
        else
            render json {
                status: :added,
                game: @game
            }
        end
    end

private

    def game_params
        params.require(:game).permit(:total_points, :difficulty, :category, :user_id)
    end
   
end
