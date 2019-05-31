class BuscaTemperaturaController < ApplicationController

    def buscar
        
        render json: RecebeTemp.new.buscar(temp_params[:cidade]), status: :ok

    end
    
    private

    def temp_params
        params.permit(:cidade)
    end
end
