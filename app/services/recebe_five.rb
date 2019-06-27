class RecebeFive
    require 'net/http'
    require 'json'

    def prox_hours(cidade)
        @cidade = cidade

        url = "http://api.openweathermap.org/data/2.5/forecast?q=#{@cidade},BR&APPID=47eea82303cf3b327239995184d03037"
        retorno = JSON.parse(Net::HTTP.get(URI(url)))
    
        dados = []
  
        retorno["list"].each do |dia|
            dados << {hora: Time.at(dia["dt"]), 
            Clima:{Temperatura: dia["main"]["temp"],
            Descrição: dia["weather"][0]["description"],
            Pressao: dia["main"]["pressure"],
            Humidade: dia["main"]["humidity"], 
            Temperatura_Maxima: dia["main"]["temp_max"], 
            Temperatura_Minima: dia["main"]["temp_min"], 
            Velocidade_Vento: dia["wind"]["speed"]}} 

        end
        dados
    end        
        
    
end        