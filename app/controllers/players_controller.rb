class PlayersController < ApplicationController
    def index
        @players = Player.all
    end

    def new
    end

    def create
        player = Player.new
        player.first_name = params[:player][:first_name]
        player.last_name = params[:player][:last_name]

        if player.save
            redirect_to "/players"
        else
            flash[:errors] = player.errors.full_messages
            redirect_to "/players/new"
        end
    end

    def show
        @player = Player.find(params[:id])
    end

    def edit
        @player = Player.find(params[:id])
    end

    def update
        @player = Player.find(params[:id])
        if @player.update(player_params)
            redirect_to "/players"
        else
            flash[:errors] = players.errors.full_messages
            redirect_to "/players/#{player.id}/edit"
        end
    end

    def destroy
        player = Player.find(params[:id])
        player.destroy
        redirect_to "/players"
    end

private
    def player_params
        params.require(:player).permit(:first_name, :last_name)
    end
end
