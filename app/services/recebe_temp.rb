class RecebeTemp

    def buscar(cidade)
        @cidade = cidade
        url = "api.openweathermap.org/data/2.5/weather?q=#{@cidade},BR&APPID=47eea82303cf3b327239995184d03037"

        retorno = JSON.parse(Net::HTTP.get(URI(url)))


        if retorno["city not found"]
            return {erro: "CIDADE NÃO EXISTE"}
        end
            rescue JSON::ParserError => exception
                {erro: "Cidade invalida"}
    
    end
end            