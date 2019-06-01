class BuscaTemperaturaController < ApplicationController

    def buscar
        
        render json: RecebeTemp.new.buscar(temp_params[:cidade]), status: :ok

    end
    
    private

    def temp_params
        params.permit(:cidade)
    end

    def buscarTo

        render json: RecebeFive.new.buscarTo(temp_param[:cidade]), status: :ok
    end

    private

    def temp_param
        param.permit(:cidade)
    end
end
