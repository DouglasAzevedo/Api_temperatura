class BuscaHoursController < ApplicationController

    def buscarTo

        render json: RecebeFive.new.buscarTo(temp_params[:cidade]), status: :ok
    end

    private

    def temp_params
        param.permit(:cidade)
    end

end