class recebeProxDia
    require 'net/http'
    require 'json'

    def prox_day(cidade)
        @cidade = cidade

        url = "http://api.openweathermap.org/data/2.5/forecast?q=#{@cidade},BR&APPID=47eea82303cf3b327239995184d03037"
        retorno = JSON.parse(Net::HTTP.get(URI(url)))
            dados = []
        
            retorno["list"].each do |horario|
                dados << {hora: Time.at(horario["dt"]),
            clima: horario["clouds"]["all"],
            descricao: horario["weather"][0]["description"],
            temperatura: horario["main"]["temp"],
            pressao: horario["main"]["pressure"],
            humidade: horario["main"]["humidity"],
            temperatura_minima: horario["main"]["temp_min"],
            temperatura_maxima: horario["main"]["temp_max"],
            vento: horario["wind"]["speed"]
            }
        end 
            dados
    end
end        