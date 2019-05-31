class RecebeTemp

    require 'net/http'
    require 'json'

    def buscar(cidade)
        @cidade = cidade

        url = "http://api.openweathermap.org/data/2.5/weather?q=#{@cidade},BR&APPID=47eea82303cf3b327239995184d03037&units=metric"
        retorno = JSON.parse(Net::HTTP.get(URI(url)))

        if retorno["message"]
            return {message: "cidade não existe"}
        else    
            retorno["main"]["temp"]
        end

    end
end             